function New-ChartInternalTitle {
    param(
        [System.Collections.IDictionary] $Options,
        [string] $Title,
        [ValidateSet('center', 'left', 'right', 'default')][string] $TitleAlignment = 'default'
    )
    # title
    $Options.title = [ordered] @{}
    if ($TitleText -ne '') {
        $Options.title.text = $Title
    }
    if ($TitleAlignment -ne 'default') {
        $Options.title.align = $TitleAlignment
    }
}