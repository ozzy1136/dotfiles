if ($host.Name -eq 'ConsoleHost') {
  Import-Module PSReadline

  Set-PSReadLineKeyHandler -Key UpArrow -Function HistorySearchBackward
  Set-PSReadLineKeyHandler -Key DownArrow -Function HistorySearchForward
  Set-PSReadLineKeyHandler -Key Tab -Function AcceptSuggestion
  Set-PsFzfOption -EnableAliasFuzzySetLocation
}

function prompt {
  $loc = $executionContext.SessionState.Path.CurrentLocation;

  $out = ""
  if ($loc.Provider.Name -eq "FileSystem") {
    $out += "$([char]27)]9;9;`"$($loc.ProviderPath)`"$([char]27)\"
  }
  $out += "PS $loc$('>' * ($nestedPromptLevel + 1)) ";
  return $out
}

oh-my-posh init pwsh --config "$Env:USERPROFILE/.config/oh-my-posh/tokyo.omp.json" | Invoke-Expression
