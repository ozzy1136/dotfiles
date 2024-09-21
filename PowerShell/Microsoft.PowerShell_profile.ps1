if ($host.Name -eq 'ConsoleHost') {
  Import-Module PSReadline

  Set-PSReadlineKeyHandler -Key UpArrow -Function HistorySearchBackward
  Set-PSReadlineKeyHandler -Key DownArrow -Function HistorySearchForward
  Set-PSReadLineKeyHandler -Key Tab -Function Complete
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

function komorebi-start {
  komorebic start --whkd
}

$Env:KOMOREBI_CONFIG_HOME = "C:\Users\{User}\.config\komorebi"

oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH/tokyo.omp.json" | Invoke-Expression
