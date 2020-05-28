CKEDITOR.stylesSet.add('exorsus', [
    /* images */
    { name: 'Bild: links', element: 'img', attributes: { 'class': 'img-responsive float-left' } },
    { name: 'Bild: rechts', element: 'img', attributes: { 'class': 'img-responsive float-right' } },
    { name: 'Bild: zentriert', element: 'img', attributes: { 'class': 'img-responsive is-centered' } },
    /* text & semantics */
    { name: 'Small', element: 'small' },
    { name: 'Zitat', element: 'cite' },
    { name: 'Betont', element: 'em' },
    { name: 'Hervorgehoben', element: 'mark' },
    { name: 'Eingefügt', element: 'ins' },
    { name: 'Durchgestrichen', element: 's' },
    { name: 'Sample', element: 'samp' },
    { name: 'Uhrzeit', element: 'time' },
    { name: 'Abkürzung', element: 'abbr' },
    { name: 'Gelöscht', element: 'del' },
    { name: 'Tastatur', element: 'kbd' },
    { name: 'Superscript', element: 'sup' },
    { name: 'Subscript', element: 'sub' },
    { name: 'Variable', element: 'var' },
    { name: 'Code', element: 'code' },
    { name: 'Hochgestellt', element: 'span', attributes: { 'class': 'text-uppercase' } },
    { name: 'Erster Buchstabe groß', element: 'span', attributes: { 'class': 'text-capitalize' } },
    { name: 'Nur Kleinbuchstaben', element: 'span', attributes: { 'class': 'text-lowercase' } },
    { name: 'Dünn', element: 'span', attributes: { 'class': 'text-light' } },
    { name: 'Normal', element: 'span', attributes: { 'class': 'text-regular' } },
    { name: 'Fetter', element: 'span', attributes: { 'class': 'text-bolder' } },
    { name: 'Fett', element: 'span', attributes: { 'class': 'text-bold' } },
    { name: 'Extra fett', element: 'span', attributes: { 'class': 'text-extra-bold' } },
    { name: 'Text: links', element: 'span', attributes: { 'class': 'text-left' } },
    { name: 'Text: rechts', element: 'span', attributes: { 'class': 'text-right' } },
    { name: 'Text: zentriert', element: 'span', attributes: { 'class': 'text-center' } },
    { name: 'Extra kleine Schrift', element: 'span', attributes: { 'class': 'text-xsmall' } },
    { name: 'Kleine Schrift', element: 'span', attributes: { 'class': 'text-small' } },
    { name: 'Normale Schrift', element: 'span', attributes: { 'class': 'text-medium' } },
    { name: 'Große Schrift', element: 'span', attributes: { 'class': 'text-large' } },
    { name: 'Extra große Schrift', element: 'span', attributes: { 'class': 'text-xlarge' } },
    /* colours */
    { name: 'Farbe: gedämpft', element: 'span', attributes: { 'class': 'has-color-darker' } },
    { name: 'Farbe: Primär', element: 'span', attributes: { 'class': 'has-color-primary' } },
    { name: 'Farbe: Sekundär', element: 'span', attributes: { 'class': 'has-color-secondary' } },
    { name: 'Farbe: Standard', element: 'span', attributes: { 'class': 'has-color-default' } },
    { name: 'Farbe: Erfolg', element: 'span', attributes: { 'class': 'has-color-success' } },
    { name: 'Farbe: Warnung', element: 'span', attributes: { 'class': 'has-color-warning' } },
    { name: 'Farbe: Gefahr', element: 'span', attributes: { 'class': 'has-color-error' } },
    { name: 'Farbe: Notiz', element: 'span', attributes: { 'class': 'has-color-notice' } },
    { name: 'Farbe: Hervorgehoben', element: 'span', attributes: { 'class': 'has-color-highlight' } },
    { name: 'Farbe: weiß', element: 'span', attributes: { 'class': 'has-color-white' } },
    { name: 'Farbe: schwarz', element: 'span', attributes: { 'class': 'has-color-black' } },
    { name: 'Hintergrund: gedämpft', element: 'span', attributes: { 'class': 'has-background-darker' } },
    { name: 'Hintergrund: Primär', element: 'span', attributes: { 'class': 'has-background-primary' } },
    { name: 'Hintergrund: Sekundär', element: 'span', attributes: { 'class': 'has-background-secondary' } },
    { name: 'Hintergrund: Standard', element: 'span', attributes: { 'class': 'has-background-default' } },
    { name: 'Hintergrund: Erfolg', element: 'span', attributes: { 'class': 'has-background-success' } },
    { name: 'Hintergrund: Warnung', element: 'span', attributes: { 'class': 'has-background-warning' } },
    { name: 'Hintergrund: Gefahr', element: 'span', attributes: { 'class': 'has-background-error' } },
    { name: 'Hintergrund: Notiz', element: 'span', attributes: { 'class': 'has-background-notice' } },
    { name: 'Hintergrund: Hervorgehoben', element: 'span', attributes: { 'class': 'has-background-highlight' } },
    { name: 'Hintergrund: weiß', element: 'span', attributes: { 'class': 'has-background-white' } },
    { name: 'Hintergrund: schwarz', element: 'span', attributes: { 'class': 'has-background-black' } },
    /* Lists */
    { name: 'Liste ohne Anführung', element: ['ul', 'ol'], attributes: { 'class': 'list-none' } },
    { name: 'Liste in einer Reihe', element: ['ul', 'ol'], attributes: { 'class': 'list-inline' } },
    { name: 'Horizontale Definitionsliste', element: 'dl', attributes: { 'class': 'list-horizontal' } },
    /* Tables */
    { name: 'Tabelle', element: 'table', attributes: { 'class': 'table' } },
    { name: 'Tabelle: gestreift', element: 'table', attributes: { 'class': 'table table-striped' } },
    { name: 'Tabelle: hover Effekt', element: 'table', attributes: { 'class': 'table table-striped table-hover' } },
    { name: 'Tabelle: horizontal scrollbar', element: 'dl', attributes: { 'class': 'table table-scroll' } }
]);

// Remove unwanted attributes from tables
CKEDITOR.on('dialogDefinition', function (ev) {
    var dialogName = ev.data.name;
    var dialogDefinition = ev.data.definition;

    if (dialogName == 'table') {
        var info = dialogDefinition.getContents('info');
        info.remove('txtWidth');
        info.remove('txtHeight');
        info.remove('txtBorder');
        info.remove('txtCellPad');
        info.remove('txtSummary');
        info.remove('txtCellSpace');
        info.remove('cmbAlign');
        var advanced = dialogDefinition.getContents('advanced');
        advanced.remove('advStyles');
        advanced.get('advCSSClasses')['default'] = 'table'; //set default class for table
    }
});
