<div class="container">
    <div class="content container size-xl">
        <h3>Typography</h3>
        <p>Type is set with rems and setting to base 10. If you use 2rem only, the font size results in 20px. Base font size is set to 16px equals to 1.6rem.</p>

        <h4 class="element-sticky" id="headings">Headings <a class="anchor" href="#headings" aria-hidden="true">#</a></h4>
        <div class="content">
            <hgroup>
                <h1>H1 Heading in hgroup</h1>
                <h2>H2 Heading in hgroup</h2>
            </hgroup>
            <h1>H1 Heading <small class="label">36px</small></h1>
            <h2>H2 Heading <small class="label">30px</small></h2>
            <h3>H3 Heading <small class="label">26px</small></h3>
            <h4>H4 Heading <small class="label">22px</small></h4>
            <h5>H5 Heading <small class="label">18px</small></h5>
            <h6>H6 Heading <small class="label">16px</small></h6>
        </div>

        <h4 class="element-sticky" id="paragraphs">Paragraphs <a class="anchor" href="#paragraphs" aria-hidden="true">#</a></h4>
        <div class="content">
            <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo.</p>
        </div>
        
        <h4 class="element-sticky" id="blockquote">Blockquote <a class="anchor" href="#blockquote" aria-hidden="true">#</a></h4>
        <div class="content">
            <blockquote>
                <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor</p>
                <cite>Joe Doe</cite>
            </blockquote>
        </div>

        <h4 class="element-sticky">Preformated & Code</h4>
        <div class="content">
            <pre class="code" rel="HTML">
            <code>&lt;!-- code snippets --&gt;
&lt;div class=&quot;column&quot;&gt;
    &lt;p&gt;Content&lt;/p&gt;
&lt;/div&gt;</code></pre>
        </div>

        <h4 class="element-sticky" id="semantics">Semantics <a class="anchor" href="#semantics" aria-hidden="true">#</a></h4>
        <div class="content container grid-xl">
            <div class="columns">
                <div class="column col-6">
                    <dfn id="def-internet">The Internet</dfn> <code>dfn</code>
                </div>
                <div class="column col-6">
                    <abbr title="World-Wide Web">WWW</abbr> <code>abbr</code>
                </div>
                <div class="column col-6">
                    <cite>Citation</cite> <code>cite</code>
                </div>
                <div class="column col-6">
                    <del>Deleted</del> <code>del</code>
                </div>
                <div class="column col-6">
                    <i>Italic</i> <code>i</code>
                </div>
                <div class="column col-6">
                    <kbd>Ctrl + V</kbd> <code>kbd</code>
                </div>
                <div class="column col-6">
                    <samp>Sample</samp> <code>samp</code>
                </div>
                <div class="column col-6">
                    m<sup>2</sup> <code>sup</code>
                </div>
                <div class="column col-6">
                    <u>Underline</u> <code>u</code>
                </div>
                <div class="column col-6">
                    <strong>Bold</strong> <code>strong</code>
                </div>
                <div class="column col-6">
                    <code>function();</code> <code>code</code>
                </div>
                <div class="column col-6">
                    <em>Emphasis</em> <code>em</code>
                </div>
                <div class="column col-6">
                    <ins>Inserted</ins> <code>ins</code>
                </div>
                <div class="column col-6">
                    <mark>Highlighted</mark> <code>mark</code>
                </div>
                <div class="column col-6">
                    <s>Strikethrough</s> <code>s</code>
                </div>
                <div class="column col-6">
                    H<sub>2</sub>O <code>sub</code>
                </div>
                <div class="column col-6">
                    <time>20:00</time> <code>time</code>
                </div>
                <div class="column col-6">
                    <var>var = x;</var> <code>var</code>
                </div>
            </div>
        </div>

        <h4 class="element-sticky" id="lists">Lists <a class="anchor" href="#lists" aria-hidden="true">#</a></h4>
        <div class="content">
            <h5>Unordered list</h5>
            <ul>
                <li>List item 1</li>
                <li>List item 2
                    <ul>
                        <li>List item 2.1</li>
                        <li>List item 2.2</li>
                        <li>List item 2.3</li>
                    </ul>
                </li>
                <li>List item 3</li>
            </ul>

            <h5>Ordered list</h5>
            <ol>
                <li>List item 1</li>
                <li>List item 2
                    <ol>
                        <li>List item 2.1</li>
                        <li>List item 2.2</li>
                        <li>List item 2.3</li>
                    </ol>
                </li>
                <li>List item 3</li>
            </ol>

            <h5>Unordered list with <code>.list-none</code> class</h5>
            <ul class="list-none">
                <li>List item 1</li>
                <li>List item 2
                    <ul>
                        <li>List item 2.1</li>
                        <li>List item 2.2</li>
                        <li>List item 2.3</li>
                    </ul>
                </li>
                <li>List item 3</li>
            </ul>

            <h5>Unordered list with <code>.list-inline</code> class</h5>
            <ul class="list-inline">
                <li>List item 1</li>
                <li>List item 2</li>
                <li>List item 3</li>
                <li>List item 4</li>
                <li>List item 5</li>
            </ul>

            <h5>Definition list</h5>
            <dl>
                <dt>Definition List Title</dt>
                <dd>This is a definition list division.</dd>
                <dt>Definition List Title</dt>
                <dd>This is a definition list division.</dd>
            </dl>

            <h5>Definition list with <code>.list-horizontal</code> class</h5>
            <dl class="list-horizontal">
                <dt>Definition List Title</dt>
                <dd>This is a definition list division.</dd>
                <dt>Definition List Title</dt>
                <dd>This is a definition list division.</dd>
            </dl>
        </div>
        <h4 class="element-sticky" id="grid">Flexbox grid <a class="anchor" href="#grid" aria-hidden="true">#</a></h4>
        
        <p>This is a simple Grid using only <code>.column</code> class for each column element. The columns are aligned in a row as they fit the available space.</p>
        <div class="columns">
            <div class="column">
                <div class="box">1</div>
            </div>
            <div class="column">
                <div class="box">2</div>
            </div>
            <div class="column">
                <div class="box">3</div>
            </div>
            <div class="column">
                <div class="box">4</div>
            </div>
        </div>

        <p>When a size class like in example <code>col-6</code> is applied to column element, the columns are sized accordingly to applied class. 
        The grid is built up using 12 columns therefore number of columns in a row depends upon their size. Each column can be sized differently when using a breakpoint class
        which is prefixed in example <code>md</code> when coluumn size should match a medium media query.</p>
        <ul class="list-none">
            <li><code>col-xs-&lt;1-12&gt;</code> apply to window width smaller than or equal to 480px.</li>
            <li><code>col-sm-&lt;1-12&gt;</code> apply to window width smaller than or equal to 600px.</li>
            <li><code>col-md-&lt;1-12&gt;</code> apply to window width smaller than or equal to 840px.</li>
            <li><code>col-lg-&lt;1-12&gt;</code> apply to window width smaller than or equal to 960px.</li>
            <li><code>col-xl-&lt;1-12&gt;</code> apply to window width smaller than or equal to 1280px.</li>
            <li><code>col-&lt;1-12&gt;</code> apply to any window width, including the width wider than 1280px.</li>
        </ul>

        <div class="columns">
            <div class="column col-12">
                <div class="box box-full"><code>col-12</code></div>
            </div>
            <div class="column col-1">
                <div class="box box-full"><code>col-1</code></div>
            </div>
            <div class="column col-11">
                <div class="box box-full"><code>col-11</code></div>
            </div>
            <div class="column col-2">
                <div class="box box-full"><code>col-2</code></div>
            </div>
            <div class="column col-10">
                <div class="box box-full"><code>col-10</code></div>
            </div>
            <div class="column col-3">
                <div class="box box-full"><code>col-3</code></div>
            </div>
            <div class="column col-9">
                <div class="box box-full"><code>col-9</code></div>
            </div>
            <div class="column col-4">
                <div class="box box-full"><code>col-4</code></div>
            </div>
            <div class="column col-8">
                <div class="box box-full"><code>col-8</code></div>
            </div>
            <div class="column col-5">
                <div class="box box-full"><code>col-5</code></div>
            </div>
            <div class="column col-7">
                <div class="box box-full"><code>col-7</code></div>
            </div>
            <div class="column col-6">
                <div class="box box-full"><code>col-6</code></div>
            </div>
            <div class="column col-6">
                <div class="box box-full"><code>col-6</code></div>
            </div>
        </div>

        <h5>Column offset</h5>
        <div class="columns">
            <div class="column col-1 col-offset-11">
                <div class="box box-full"><code>col-1 col-offset-11</code></div>
            </div>
            <div class="column col-2 col-offset-10">
                <div class="box box-full"><code>col-2 col-offset-10</code></div>
            </div>
            <div class="column col-3 col-offset-9">
                <div class="box box-full"><code>col-3 col-offset-9</code></div>
            </div>
            <div class="column col-4 col-offset-8">
                <div class="box box-full"><code>col-4 col-offset-8</code></div>
            </div>
            <div class="column col-5 col-offset-7">
                <div class="box box-full"><code>col-5 col-offset-7</code></div>
            </div>
            <div class="column col-6 col-offset-6">
                <div class="box box-full"><code>col-6 col-offset-6</code></div>
            </div>
            <div class="column col-7 col-offset-5">
                <div class="box box-full"><code>col-7 col-offset-5</code></div>
            </div>
            <div class="column col-8 col-offset-4">
                <div class="box box-full"><code>col-8 col-offset-4</code></div>
            </div>
            <div class="column col-9 col-offset-3">
                <div class="box box-full"><code>col-9 col-offset-3</code></div>
            </div>
            <div class="column col-10 col-offset-2">
                <div class="box box-full"><code>col-10 col-offset-2</code></div>
            </div>
            <div class="column col-11 col-offset-1">
                <div class="box box-full"><code>col-11 col-offset-1</code></div>
            </div>
        </div>

        <h5>Column push & pull</h5>
        <div class="columns">
            <div class="column col-1 col-push-11">
                <div class="box box-full"><code>ccol-1 col-push-11</code></div>
            </div>
            <div class="column col-11 col-pull-1">
                <div class="box box-full"><code>col-11 col-pull-1</code></div>
            </div>
            <div class="column col-2 col-push-10">
                <div class="box box-full"><code>col-2 col-push-10</code></div>
            </div>
            <div class="column col-10 col-pull-2">
                <div class="box box-full"><code>col-10 col-pull-2</code></div>
            </div>
            <div class="column col-3 col-push-9">
                <div class="box box-full"><code>col-3 col-push-9</code></div>
            </div>
            <div class="column col-9 col-pull-3">
                <div class="box box-full"><code>col-9 col-pull-3</code></div>
            </div>
            <div class="column col-4 col-push-8">
                <div class="box box-full"><code>col-4 col-push-8</code></div>
            </div>
            <div class="column col-8 col-pull-4">
                <div class="box box-full"><code>col-8 col-pull-4</code></div>
            </div>
            <div class="column col-5 col-push-7">
                <div class="box box-full"><code>col-5 col-push-7</code></div>
            </div>
            <div class="column col-7 col-pull-5">
                <div class="box box-full"><code>col-7 col-pull-5</code></div>
            </div>
            <div class="column col-6 col-push-6">
                <div class="box box-full"><code>col-5 col-push-7</code></div>
            </div>
            <div class="column col-6 col-pull-6">
                <div class="box box-full"><code>col-7 col-pull-5</code></div>
            </div>
        </div>

        <p>Columns with responsive modifiers for different column size based on current viewport.</p>

        <div class="columns">
            <div class="column col-8 col-md-6 col-sm-12">
                <div class="box box-full">1 <br /><code>col-8 col-md-6 col-sm-12</code></div>
            </div>
            <div class="column col-2 col-md-6 col-xs-12">
                <div class="box box-full">2 <br /><code>col-2 col-md-6 col-xs-12</code></div>
            </div>
            <div class="column col-2 col-md-12">
                <div class="box box-full">3 <br /><code>col-2 col-md-12</code></div>
            </div>
        </div>

        <p>Usign <code>.has-no-gap</code> class on <code>.columns</code> element the columns are aligned without a gap between</p>
        <div class="columns has-no-gap">
            <div class="column col-8 col-md-6 col-sm-12">
                <div class="box box-full">1 <br /><code>col-8 col-md-6 col-sm-12</code></div>
            </div>
            <div class="column col-2 col-md-6 col-xs-12">
                <div class="box box-full">2 <br /><code>col-2 col-md-6 col-xs-12</code></div>
            </div>
            <div class="column col-2 col-md-12">
                <div class="box box-full">3 <br /><code>col-2 col-md-12</code></div>
            </div>
        </div>

        <p>When a class <code>is-oneline</code> is applied to the <code>columns</code> element the grid and it's children itself will not align on multi line but
        will get positioned in a single row.</p>
        <div class="columns is-oneline">
            <div class="column col-8 col-md-6 col-sm-12">
                <div class="box box-full">1 <br /><code>col-8 col-md-6 col-sm-12</code></div>
            </div>
            <div class="column col-2 col-md-6 col-xs-12">
                <div class="box box-full">2 <br /><code>col-2 col-md-6 col-xs-12</code></div>
            </div>
            <div class="column col-2 col-md-12">
                <div class="box box-full">3 <br /><code>col-2 col-md-12</code></div>
            </div>
            <div class="column col-2 col-md-6 col-xs-12">
                <div class="box box-full">2 <br /><code>col-2 col-md-6 col-xs-12</code></div>
            </div>
            <div class="column col-2 col-md-12">
                <div class="box box-full">3 <br /><code>col-2 col-md-12</code></div>
            </div>
        </div>

        <p>Usign alignement classes on <code>.columns</code> element the child columns are aligned as specified. You can use following classes for alignement, 
        note that you can change alignement for different breakpoints using media query as a suffix in example <code>align-center-md</code>.</p>
        <ul class="list-none">
            <li><code>align&lt;-xs|xl&gt;-start</code> aligns elements at the start of the flex box.</li>
            <li><code>align&lt;-xs|xl&gt;-end</code> aligns elements at the end of the flex box.</li>
            <li><code>align&lt;-xs|xl&gt;-center</code> aligns elements at the center of the flex box.</li>
            <li><code>align&lt;-xs|xl&gt;-top</code> aligns elements vertically at the top of the flex box.</li>
            <li><code>align&lt;-xs|xl&gt;-middle</code> aligns elements vertically at the middle of the flex box.</li>
            <li><code>align&lt;-xs|xl&gt;-bottom</code> aligns elements vertically at the bottom of the flex box.</li>
        </ul>

        <h5>Alignement</h5>
        <p>Aligning elements based on their respective parent. Elements can be aligned to the start (default), end of a row or vertically aligned to top, bottom or center.</p>

        <p><code>.align-start</code></p>
        <div class="columns align-start">
            <div class="column col-2 col-md-6 col-xs-12">
                <div class="box">1 <br />
                <code>col-2 col-md-6 col-xs-12</code></div>
            </div>
            <div class="column col-2 col-md-6 col-xs-12">
                <div class="box">2 <br />
                <code>col-2 col-md-6 col-xs-12</code></div>
            </div>
        </div>

        <p><code>.align-center</code></p>
        <div class="columns align-center">
            <div class="column col-2 col-md-6 col-xs-12">
                <div class="box box-full">1 <br /><code>col-2 col-md-6 col-xs-12</code></div>
            </div>
            <div class="column col-2 col-md-6 col-xs-12">
                <div class="box box-full">2 <br /><code>col-2 col-md-6 col-xs-12</code></div>
            </div>
        </div>

        <p><code>.align-end</code></p>
        <div class="columns align-end">
            <div class="column col-2 col-md-6 col-xs-12">
                <div class="box box-full">1 <br /><code>col-2 col-md-6 col-xs-12</code></div>
            </div>
            <div class="column col-2 col-md-6 col-xs-12">
                <div class="box box-full">2 <br /><code>col-2 col-md-6 col-xs-12</code></div>
            </div>
        </div>

        <p><code>.align-top</code></p>
        <div class="columns align-top">
            <div class="column col-6 col-xs-12">
                <div class="box box-large">1 <br /><code>col-6 col-xs-12</code></div>
            </div>
            <div class="column col-6 col-xs-12">
                <div class="box">2 <br /><code>col-6 col-xs-12</code></div>
            </div>
        </div>

        <p><code>.align-middle</code></p>
        <div class="columns align-middle">
            <div class="column col-6 col-xs-12">
                <div class="box">1 <br /><code>col-6 col-xs-12</code></div>
            </div>
            <div class="column col-6 col-xs-12">
                <div class="box box-large">2 <br /><code>col-6 col-xs-12</code></div>
            </div>
        </div>

        <p><code>.align-bottom</code></p>
        <div class="columns align-bottom">
            <div class="column col-6 col-xs-12">
                <div class="box">1 <br /><code>col-6 col-xs-12</code></div>
            </div>
            <div class="column col-6 col-xs-12">
                <div class="box box-large">2 <br /><code>col-6 col-xs-12</code></div>
            </div>
        </div>

        <h5>Distributing</h5>
        <p>Distributing the elements within their respective parent.</p>

        <ul class="list-none">
            <li><code>align&lt;-xs|xl&gt;-around</code> spreads elements with equal spacing around.</li>
            <li><code>align&lt;-xs|xl&gt;-between</code> spreads elements equaly within available space beginning at start.</li>
        </ul>

        <p><code>.align-around</code></p>
        <div class="columns align-around">
            <div class="column col-2 col-md-6 col-xs-12">
                <div class="box box-full">1 <br /><code>col-2 col-md-6 col-xs-12</code></div>
            </div>
            <div class="column col-2 col-md-6 col-xs-12">
                <div class="box box-full">2 <br /><code>col-2 col-md-6 col-xs-12</code></div>
            </div>
            <div class="column col-2 col-md-6 col-xs-12">
                <div class="box box-full">3 <br /><code>col-2 col-md-6 col-xs-12</code></div>
            </div>
        </div>

        <p><code>.align-between</code></p>
        <div class="columns align-between">
            <div class="column col-2 col-md-6 col-xs-12">
                <div class="box box-full">1 <br /><code>col-2 col-md-6 col-xs-12</code></div>
            </div>
            <div class="column col-2 col-md-6 col-xs-12">
                <div class="box box-full">2 <br /><code>col-2 col-md-6 col-xs-12</code></div>
            </div>
            <div class="column col-2 col-md-6 col-xs-12">
                <div class="box box-full">3 <br /><code>col-2 col-md-6 col-xs-12</code></div>
            </div>
        </div>

        <h5>Reordering</h5>
        <p>Adding classes that apply to reordering you can specify the order of a column.</p>

        <ul class="list-none">
            <li><code>align-&lt;-xs|xl&gt;first</code> applied on column element will change the order of the element to be the first.</li>
            <li><code>align&lt;-xs|xl&gt;-last</code> applied on column element will change the order of the element to be the last.</li>
            <li><code>align&lt;-xs|xl&gt;-reverse</code> applied on parent element will change the order of all child elements to a reversed order.</li>
        </ul>

        <p><code>.align-first</code></p>
        <div class="columns">
            <div class="column col-3">
                <div class="box box-full">1 <br /><code>col-3</code></div>
            </div>
            <div class="column col-3">
                <div class="box box-full">2 <br /><code>col-3</code></div>
            </div>
            <div class="column col-3">
                <div class="box box-full">3 <br /><code>col-3</code></div>
            </div>
            <div class="column col-3 align-first">
                <div class="box box-full">4 <br /><code>col-3 align-first</code></div>
            </div>
        </div>

        <p><code>.align-last</code></p>
        <div class="columns">
            <div class="column col-3 align-last">
                <div class="box box-full">1 <br /><code>col-3 align-last</code></div>
            </div>
            <div class="column col-3">
                <div class="box box-full">2 <br /><code>col-3</code></div>
            </div>
            <div class="column col-3">
                <div class="box box-full">3 <br /><code>col-3</code></div>
            </div>
            <div class="column col-3">
                <div class="box box-full">4 <br /><code>col-3</code></div>
            </div>
        </div>

        <p><code>.align-reverse</code></p>
        <div class="columns align-reverse">
            <div class="column col-3">
                <div class="box box-full">1 <br /><code>col-3</code></div>
            </div>
            <div class="column col-3">
                <div class="box box-full">2 <br /><code>col-3</code></div>
            </div>
            <div class="column col-3">
                <div class="box box-full">3 <br /><code>col-3</code></div>
            </div>
            <div class="column col-3">
                <div class="box box-full">4 <br /><code>col-3</code></div>
            </div>
        </div>

        <h5>Direction</h5>
        <p>With direction classes you can change the behaviour of the grid, either be it a row or column.</p>

        <p><code>.direction-column</code></p>
        <div class="columns direction-column">
            <div class="column col-3">
                <div class="box box-full">1 <br /><code>col-3</code></div>
            </div>
            <div class="column col-3">
                <div class="box box-full">2 <br /><code>col-3</code></div>
            </div>
            <div class="column col-3">
                <div class="box box-full">3 <br /><code>col-3</code></div>
            </div>
            <div class="column col-3">
                <div class="box box-full">4 <br /><code>col-3</code></div>
            </div>
        </div>

        <p><code>.direction-column.align-reverse</code></p>
        <div class="columns direction-column align-reverse">
            <div class="column col-3">
                <div class="box box-full">1 <br /><code>col-3</code></div>
            </div>
            <div class="column col-3">
                <div class="box box-full">2 <br /><code>col-3</code></div>
            </div>
            <div class="column col-3">
                <div class="box box-full">3 <br /><code>col-3</code></div>
            </div>
            <div class="column col-3">
                <div class="box box-full">4 <br /><code>col-3</code></div>
            </div>
        </div>

        <p><code>.direction-column-reverse</code></p>
        <div class="columns direction-column-reverse">
            <div class="column col-3">
                <div class="box box-full">1 <br /><code>col-3</code></div>
            </div>
            <div class="column col-3">
                <div class="box box-full">2 <br /><code>col-3</code></div>
            </div>
            <div class="column col-3">
                <div class="box box-full">3 <br /><code>col-3</code></div>
            </div>
            <div class="column col-3">
                <div class="box box-full">4 <br /><code>col-3</code></div>
            </div>
        </div>

        <p><code>.direction-column-reverse.align-reverse</code></p>
        <div class="columns direction-column-reverse align-reverse">
            <div class="column col-3">
                <div class="box box-full">1 <br /><code>col-3</code></div>
            </div>
            <div class="column col-3">
                <div class="box box-full">2 <br /><code>col-3</code></div>
            </div>
            <div class="column col-3">
                <div class="box box-full">3 <br /><code>col-3</code></div>
            </div>
            <div class="column col-3">
                <div class="box box-full">4 <br /><code>col-3</code></div>
            </div>
        </div>

        <h4 class="element-sticky" id="text">Helper & utilities <a class="anchor" href="#text" aria-hidden="true">#</a></h4>
        <div class="content">
            <h5>Text utilites</h5>
            <p>Text utilities are used to style and manipulate portions of text.</p>
            <ul class="list-none">
                <li><code>.text-left</code> Aligns text to left</li>
                <li><code>.text-right</code> Aligns text to right</li>
                <li><code>.text-center</code> Aligns text to center</li>
                <li><code>.text-top</code> Vertical top alignement</li>
                <li><code>.text-middle</code> Vertical middle alignement</li>
                <li><code>.text-bottom</code> Vertical bottom alignement</li>
                <li><code>.text-baseline</code> Vertical baseline alignement</li>
                <li><code>.text-light</code> Sets font-weight to <span class="text-light">300</span> <small>Applicable only if font has font style included</small></li>
                <li><code>.text-regular</code> Sets font-weight to <span class="text-regular">400</span> <small>Applicable only if font has font style included</small></li>
                <li><code>.text-bolder</code> Sets font-weight to <span class="text-bolder">500</span> <small>Applicable only if font has font style included</small></li>
                <li><code>.text-bold</code> Sets font-weight to <span class="text-bold">600</span> <small>Applicable only if font has font style included</small></li>
                <li><code>.text-extra-bold</code> Sets font-weight to <span class="text-extra-bold">700</span> <small>Applicable only if font has font style included</small></li>
                <li><code>.text-uppercase</code> Transforms text to <span class="text-uppercase">uppercase</span></li>
                <li><code>.text-captialize</code> Transforms text to <span class="text-capitalize">capitalized</span></li>
                <li><code>.text-lowercase</code> Transforms text to <span class="text-lowercase">lowercase</span></li>
                <li><code>.text-italic</code> Transforms text to <span class="text-italic">italic</span></li>
                <li><code>.text-normal</code> Transforms text to normal</li>
                <li><code>.text-ellipsis</code> Will display an ellipsis to the clipped text</li>
                <li><code>.text-clip</code> Will truncate the clipped text</li>
                <li><code>.text-break</code> Will break the text at arbitary point</li>
                <li><code>.text-nowrap</code> Will set white space to nowrap</li>
                <li><code>.text-hide</code> Will visually hide the text</li>
                <li><code>.text-xsmall</code> Sets a <span class="text-xsmall">tiny</span> font size. Text size is also applicable to different breakpoints <code>.text-&lt;xs|sm|md|lg|xl&gt;-xsmall</code>, when prefixed with a breakpoint the text size will be applied only up to defined breakpoint.</li>
                <li><code>.text-small</code> Sets a <span class="text-small">small</span> font size. Text size is also applicable to different breakpoints <code>.text-&lt;xs|sm|md|lg|xl&gt;-small</code>, when prefixed with a breakpoint the text size will be applied only up to defined breakpoint.</li>
                <li><code>.text-medium</code> Sets a <span class="text-medium">medium</span> (default) font size. Text size is also applicable to different breakpoints <code>.text-&lt;xs|sm|md|lg|xl&gt;-medium</code>, when prefixed with a breakpoint the text size will be applied only up to defined breakpoint.</li>
                <li><code>.text-large</code> Sets a <span class="text-large">large</span> font size. Text size is also applicable to different breakpoints <code>.text-&lt;xs|sm|md|lg|xl&gt;-large</code>, when prefixed with a breakpoint the text size will be applied only up to defined breakpoint.</li>
                <li><code>.text-xlarge</code> Sets a <span class="text-xlarge">extra large</span> font size. Text size is also applicable to different breakpoints <code>.text-&lt;xs|sm|md|lg|xl&gt;-xlarge</code>, when prefixed with a breakpoint the text size will be applied only up to defined breakpoint.</li>
            </ul>

            <h5>Position utilites</h5>
            <p>Position utilities are used to manipulate position or floating of elements.</p>

            <ul class="list-none">
                <li><code>.float-left</code> Float an element to left</li>
                <li><code>.float-right</code> Float an element to right</li>
                <li><code>.float-reset</code> Reset a floating element</li>
                <li><code>.clearfix</code> Usually needed to clear floats</li>
                <li><code>.is-relative</code> Set a relative position on an element</li>
                <li><code>.is-absolute</code> Set an absolute position on an element</li>
                <li><code>.is-fixed</code> Set a fixed position on an element</li>
                <li><code>.is-sticky</code> Set a sticky position on an element, if <a href="https://caniuse.com/#feat=css-sticky" target"_blank">browser</a> supports it</li>
                <li><code>.is-centered</code> Set a centered position on an element using auto margin</li>
            </ul>

            <h5>Visibility utilites</h5>
            <p>Visibility utilities are used to manipulate visibility of elements.</p>

            <ul class="list-none">
                <li><code>.is-hidden</code> Will hide an element using <code>display: none;</code></li>
                <li><code>.is-visible</code> Will reset an element visibility property <code>visibility: visible;</code></li>
                <li><code>.is-assistive</code> Hide only visually but have it available for screen readers</li>
                <li><code>.is-invisible</code> Hide only visually and from screen readers but maintain layout</li>
                <li><code>.is-clipped</code> Will hide overflow if content is larger than available area</li>
            </ul>

            <p>With responsive utilities you can hide or show elements depending on different viewport sizes.</p>

            <ul class="list-none">
                <li><code>.show-xs</code> Show elements when the window width is smaller than or equal to 480px.</li>
                <li><code>.show-sm</code> Show elements when the window width is smaller than or equal to 600px</li>
                <li><code>.show-md</code> Show elements when the window width is smaller than or equal to 840px</li>
                <li><code>.show-lg</code> Show elements when the window width is smaller than or equal to 960px</li>
                <li><code>.show-xl</code> Show elements when the window width is smaller than or equal to 1280px</li>
                <li><code>.show-xxl</code> Show elements when the window width is larger than 1280px</li>
            </ul>

            <p>By default the show utility will display elements as block element. If an element needs another display property use following class modifier.</p>

            <ul class="list-none">
                <li><code>.show-&lt;xs|sm|md|lg|xl|xxl&gt;inline</code> Show elements with inline display property.</li>
                <li><code>.show-&lt;xs|sm|md|lg|xl|xxl&gt;-inline-block</code> Show elements with inline-block display property.</li>
                <li><code>.show-&lt;xs|sm|md|lg|xl|xxl&gt;-flex</code> Show elements with flex display property.</li>
                <li><code>.show-&lt;xs|sm|md|lg|xl|xxl&gt;-inline-flex</code> Show elements with inline-flex display property.</li>
            </ul>

            <ul class="list-none">
                <li><code>.hide-xs</code> Hide elements when the window width is smaller than or equal to 480px.</li>
                <li><code>.hide-sm</code> Hide elements when the window width is smaller than or equal to 600px</li>
                <li><code>.hide-md</code> Hide elements when the window width is smaller than or equal to 840px</li>
                <li><code>.hide-lg</code> Hide elements when the window width is smaller than or equal to 960px</li>
                <li><code>.hide-xl</code> Hide elements when the window width is smaller than or equal to 1280px</li>
                <li><code>.hide-xxl</code> Hide elements when the window width is larger than 1280px</li>
            </ul>

            <h5>Display utilites</h5>
            <p>Display utilities are used to manipulate display property of elements.</p>

            <ul class="list-none">
                <li><code>.is-inline</code> Will set element property to inline</li>
                <li><code>.is-inline-block</code> Will set element property to inline-block</li>
                <li><code>.is-block</code> Will set element property to block</li>
                <li><code>.is-flex</code> Will set element property to flex</li>
                <li><code>.is-inline-flex</code> Will set element property to inline-flex</li>
            </ul>

            <h5>Shape utilites</h5>
            <p>Shape utilities are used to manipulate the shape of elements.</p>

            <div class="columns">
                <div class="column col-3"><div class="box shape is-rounded is-flex align-middle align-center"><span>Rounded<br /><code>.is-rounded</code></span></div></div>
                 <div class="column col-3"><div class="box shape is-circle is-flex align-middle align-center"><span>Circle<br /><code>.is-circle</code></span></div></div>
            </div>

            <h5>Spacing utilites</h5>
            <p>Spacing utilities are used to add or remove margins and/or paddings to an element. Each type can be applied to a a different breakpoint using the responsive class modifier.</p>
            
            <h6>Margins</h6>
            <ul class="list-none">
                <li><code>.margin-&lt;xs|sm|md|lg|xl|xxl&gt;-xsmall</code> Adds a tiny margin <small>(default: 2px)</small></li>
                <li><code>.margin-left-&lt;xs|sm|md|lg|xl|xxl&gt;-xsmall</code> Adds a tiny margin to the left <small>(default: 2px)</small></li>
                <li><code>.margin-right-&lt;xs|sm|md|lg|xl|xxl&gt;-xsmall</code> Adds a tiny margin to the right <small>(default: 2px)</small></li>
                <li><code>.margin-top-&lt;xs|sm|md|lg|xl|xxl&gt;-xsmall</code> Adds a tiny margin to the top <small>(default: 2px)</small></li>
                <li><code>.margin-bottom-&lt;xs|sm|md|lg|xl|xxl&gt;-xsmall</code> Adds a tiny margin to the bottom <small>(default: 2px)</small></li>
                <li><code>.margin-vertical-&lt;xs|sm|md|lg|xl|xxl&gt;-xsmall</code> Adds a tiny margin to the top and bottom of an element <small>(default: 2px)</small></li>
                <li><code>.margin-horizontal-&lt;xs|sm|md|lg|xl|xxl&gt;-xsmall</code> Adds a tiny margin to the left and right of an element <small>(default: 2px)</small></li>
            </ul>
            <ul class="list-none">
                <li><code>.margin-&lt;xs|sm|md|lg|xl|xxl&gt;-small</code> Adds a small margin <small>(default: 5px)</small></li>
                <li><code>.margin-left-&lt;xs|sm|md|lg|xl|xxl&gt;-small</code> Adds a small margin to the left <small>(default: 5px)</small></li>
                <li><code>.margin-right-&lt;xs|sm|md|lg|xl|xxl&gt;-small</code> Adds a small margin to the right <small>(default: 5px)</small></li>
                <li><code>.margin-top-&lt;xs|sm|md|lg|xl|xxl&gt;-small</code> Adds a small margin to the top <small>(default: 5px)</small></li>
                <li><code>.margin-bottom-&lt;xs|sm|md|lg|xl|xxl&gt;-small</code> Adds a small margin to the bottom <small>(default: 5px)</small></li>
                <li><code>.margin-vertical-&lt;xs|sm|md|lg|xl|xxl&gt;-small</code> Adds a small margin to the top and bottom of an element <small>(default: 5px)</small></li>
                <li><code>.margin-horizontal-&lt;xs|sm|md|lg|xl|xxl&gt;-small</code> Adds a small margin to the left and right of an element <small>(default: 5px)</small></li>
            </ul>
            <ul class="list-none">
                <li><code>.margin-&lt;xs|sm|md|lg|xl|xxl&gt;-medium</code> Adds a medium margin <small>(default: 10px)</small></li>
                <li><code>.margin-left-&lt;xs|sm|md|lg|xl|xxl&gt;-medium</code> Adds a medium margin to the left <small>(default: 10px)</small></li>
                <li><code>.margin-right-&lt;xs|sm|md|lg|xl|xxl&gt;-medium</code> Adds a medium margin to the right <small>(default: 10px)</small></li>
                <li><code>.margin-top-&lt;xs|sm|md|lg|xl|xxl&gt;-medium</code> Adds a medium margin to the top <small>(default: 10px)</small></li>
                <li><code>.margin-bottom-&lt;xs|sm|md|lg|xl|xxl&gt;-medium</code> Adds a medium margin to the bottom <small>(default: 10px)</small></li>
                <li><code>.margin-vertical-&lt;xs|sm|md|lg|xl|xxl&gt;-medium</code> Adds a medium margin to the top and bottom of an element <small>(default: 10px)</small></li>
                <li><code>.margin-horizontal-&lt;xs|sm|md|lg|xl|xxl&gt;-medium</code> Adds a medium margin to the left and right of an element <small>(default: 10px)</small></li>
            </ul>
            <ul class="list-none">
                <li><code>.margin-&lt;xs|sm|md|lg|xl|xxl&gt;-large</code> Adds a large margin <small>(default: 20px)</small></li>
                <li><code>.margin-left-&lt;xs|sm|md|lg|xl|xxl&gt;-large</code> Adds a large margin to the left <small>(default: 20px)</small></li>
                <li><code>.margin-right-&lt;xs|sm|md|lg|xl|xxl&gt;-large</code> Adds a large margin to the right <small>(default: 20px)</small></li>
                <li><code>.margin-top-&lt;xs|sm|md|lg|xl|xxl&gt;-large</code> Adds a large margin to the top <small>(default: 20px)</small></li>
                <li><code>.margin-bottom-&lt;xs|sm|md|lg|xl|xxl&gt;-large</code> Adds a large margin to the bottom <small>(default: 20px)</small></li>
                <li><code>.margin-vertical-&lt;xs|sm|md|lg|xl|xxl&gt;-large</code> Adds a large margin to the top and bottom of an element <small>(default: 20px)</small></li>
                <li><code>.margin-horizontal-&lt;xs|sm|md|lg|xl|xxl&gt;-large</code> Adds a large margin to the left and right of an element <small>(default: 20px)</small></li>
            </ul>
            <ul class="list-none">
                <li><code>.margin-&lt;xs|sm|md|lg|xl|xxl&gt;-xlarge</code> Adds an extra large margin <small>(default: 40px)</small></li>
                <li><code>.margin-left-&lt;xs|sm|md|lg|xl|xxl&gt;-xlarge</code> Adds an extra large margin to the left <small>(default: 40px)</small></li>
                <li><code>.margin-right-&lt;xs|sm|md|lg|xl|xxl&gt;-xlarge</code> Adds an extra large margin to the right <small>(default: 40px)</small></li>
                <li><code>.margin-top-&lt;xs|sm|md|lg|xl|xxl&gt;-xlarge</code> Adds an extra large margin to the top <small>(default: 40px)</small></li>
                <li><code>.margin-bottom-&lt;xs|sm|md|lg|xl|xxl&gt;-xlarge</code> Adds an extra large margin to the bottom <small>(default: 40px)</small></li>
                <li><code>.margin-vertical-&lt;xs|sm|md|lg|xl|xxl&gt;-xlarge</code> Adds an extra large margin to the top and bottom of an element <small>(default: 40px)</small></li>
                <li><code>.margin-horizontal-&lt;xs|sm|md|lg|xl|xxl&gt;-xlarge</code> Adds an extra large margin to the left and right of an element <small>(default: 40px)</small></li>
            </ul>
            <ul class="list-none">
                <li><code>.remove-margin-&lt;xs|sm|md|lg|xl|xxl&gt;</code> Removes margin</li>
                <li><code>.remove-margin-left-&lt;xs|sm|md|lg|xl|xxl&gt;</code> Removes margin on the left</li>
                <li><code>.remove-margin-right-&lt;xs|sm|md|lg|xl|xxl&gt;</code>Removes margin on the right</li>
                <li><code>.remove-margin-top-&lt;xs|sm|md|lg|xl|xxl&gt;</code> Removes margin at the top</li>
                <li><code>.remove-margin-bottom-&lt;xs|sm|md|lg|xl|xxl&gt;</code> Removes margin at the bottom</li>
                <li><code>.remove-margin-vertical-&lt;xs|sm|md|lg|xl|xxl&gt;</code> Removes margin on top and bottom of an element</li>
                <li><code>.remove-margin-horizontal-&lt;xs|sm|md|lg|xl|xxl&gt;</code> Removes margin at the left and right of an element</li>
            </ul>

            <h6>Paddings</h6>
            <ul class="list-none">
                <li><code>.padding-&lt;xs|sm|md|lg|xl|xxl&gt;-xsmall</code> Adds a tiny padding <small>(default: 2px)</small></li>
                <li><code>.padding-left-&lt;xs|sm|md|lg|xl|xxl&gt;-xsmall</code> Adds a tiny padding to the left <small>(default: 2px)</small></li>
                <li><code>.padding-right-&lt;xs|sm|md|lg|xl|xxl&gt;-xsmall</code> Adds a tiny padding to the right <small>(default: 2px)</small></li>
                <li><code>.padding-top-&lt;xs|sm|md|lg|xl|xxl&gt;-xsmall</code> Adds a tiny padding to the top <small>(default: 2px)</small></li>
                <li><code>.padding-bottom-&lt;xs|sm|md|lg|xl|xxl&gt;-xsmall</code> Adds a tiny padding to the bottom <small>(default: 2px)</small></li>
                <li><code>.padding-vertical-&lt;xs|sm|md|lg|xl|xxl&gt;-xsmall</code> Adds a tiny padding to the top and bottom of an element <small>(default: 2px)</small></li>
                <li><code>.padding-horizontal-&lt;xs|sm|md|lg|xl|xxl&gt;-xsmall</code> Adds a tiny padding to the left and right of an element <small>(default: 2px)</small></li>
            </ul>
            <ul class="list-none">
                <li><code>.padding-&lt;xs|sm|md|lg|xl|xxl&gt;-small</code> Adds a small padding <small>(default: 5px)</small></li>
                <li><code>.padding-left-&lt;xs|sm|md|lg|xl|xxl&gt;-small</code> Adds a small padding to the left <small>(default: 5px)</small></li>
                <li><code>.padding-right-&lt;xs|sm|md|lg|xl|xxl&gt;-small</code> Adds a small padding to the right <small>(default: 5px)</small></li>
                <li><code>.padding-top-&lt;xs|sm|md|lg|xl|xxl&gt;-small</code> Adds a small padding to the top <small>(default: 5px)</small></li>
                <li><code>.padding-bottom-&lt;xs|sm|md|lg|xl|xxl&gt;-small</code> Adds a small padding to the bottom <small>(default: 5px)</small></li>
                <li><code>.padding-vertical-&lt;xs|sm|md|lg|xl|xxl&gt;-small</code> Adds a small padding to the top and bottom of an element <small>(default: 5px)</small></li>
                <li><code>.padding-horizontal-&lt;xs|sm|md|lg|xl|xxl&gt;-small</code> Adds a small padding to the left and right of an element <small>(default: 5px)</small></li>
            </ul>
            <ul class="list-none">
                <li><code>.padding-&lt;xs|sm|md|lg|xl|xxl&gt;-medium</code> Adds a medium padding <small>(default: 10px)</small></li>
                <li><code>.padding-left-&lt;xs|sm|md|lg|xl|xxl&gt;-medium</code> Adds a medium padding to the left <small>(default: 10px)</small></li>
                <li><code>.padding-right-&lt;xs|sm|md|lg|xl|xxl&gt;-medium</code> Adds a medium padding to the right <small>(default: 10px)</small></li>
                <li><code>.padding-top-&lt;xs|sm|md|lg|xl|xxl&gt;-medium</code> Adds a medium padding to the top <small>(default: 10px)</small></li>
                <li><code>.padding-bottom-&lt;xs|sm|md|lg|xl|xxl&gt;-medium</code> Adds a medium padding to the bottom <small>(default: 10px)</small></li>
                <li><code>.padding-vertical-&lt;xs|sm|md|lg|xl|xxl&gt;-medium</code> Adds a medium padding to the top and bottom of an element <small>(default: 10px)</small></li>
                <li><code>.padding-horizontal-&lt;xs|sm|md|lg|xl|xxl&gt;-medium</code> Adds a medium padding to the left and right of an element <small>(default: 10px)</small></li>
            </ul>
            <ul class="list-none">
                <li><code>.padding-&lt;xs|sm|md|lg|xl|xxl&gt;-large</code> Adds a large padding <small>(default: 20px)</small></li>
                <li><code>.padding-left-&lt;xs|sm|md|lg|xl|xxl&gt;-large</code> Adds a large padding to the left <small>(default: 20px)</small></li>
                <li><code>.padding-right-&lt;xs|sm|md|lg|xl|xxl&gt;-large</code> Adds a large padding to the right <small>(default: 20px)</small></li>
                <li><code>.padding-top-&lt;xs|sm|md|lg|xl|xxl&gt;-large</code> Adds a large padding to the top <small>(default: 20px)</small></li>
                <li><code>.padding-bottom-&lt;xs|sm|md|lg|xl|xxl&gt;-large</code> Adds a large padding to the bottom <small>(default: 20px)</small></li>
                <li><code>.padding-vertical-&lt;xs|sm|md|lg|xl|xxl&gt;-large</code> Adds a large padding to the top and bottom of an element <small>(default: 20px)</small></li>
                <li><code>.padding-horizontal-&lt;xs|sm|md|lg|xl|xxl&gt;-large</code> Adds a large padding to the left and right of an element <small>(default: 20px)</small></li>
            </ul>
            <ul class="list-none">
                <li><code>.padding-&lt;xs|sm|md|lg|xl|xxl&gt;-xlarge</code> Adds an extra large padding <small>(default: 40px)</small></li>
                <li><code>.padding-left-&lt;xs|sm|md|lg|xl|xxl&gt;-xlarge</code> Adds an extra large padding to the left <small>(default: 40px)</small></li>
                <li><code>.padding-right-&lt;xs|sm|md|lg|xl|xxl&gt;-xlarge</code> Adds an extra large padding to the right <small>(default: 40px)</small></li>
                <li><code>.padding-top-&lt;xs|sm|md|lg|xl|xxl&gt;-xlarge</code> Adds an extra large padding to the top <small>(default: 40px)</small></li>
                <li><code>.padding-bottom-&lt;xs|sm|md|lg|xl|xxl&gt;-xlarge</code> Adds an extra large padding to the bottom <small>(default: 40px)</small></li>
                <li><code>.padding-vertical-&lt;xs|sm|md|lg|xl|xxl&gt;-xlarge</code> Adds an extra large padding to the top and bottom of an element <small>(default: 40px)</small></li>
                <li><code>.padding-horizontal-&lt;xs|sm|md|lg|xl|xxl&gt;-xlarge</code> Adds an extra large padding to the left and right of an element <small>(default: 40px)</small></li>
            </ul>
            <ul class="list-none">
                <li><code>.remove-padding-&lt;xs|sm|md|lg|xl|xxl&gt;</code> Removes padding</li>
                <li><code>.remove-padding-left-&lt;xs|sm|md|lg|xl|xxl&gt;</code> Removes padding on the left</li>
                <li><code>.remove-padding-right-&lt;xs|sm|md|lg|xl|xxl&gt;</code>Removes padding on the right</li>
                <li><code>.remove-padding-top-&lt;xs|sm|md|lg|xl|xxl&gt;</code> Removes padding at the top</li>
                <li><code>.remove-padding-bottom-&lt;xs|sm|md|lg|xl|xxl&gt;</code> Removes padding at the bottom</li>
                <li><code>.remove-padding-vertical-&lt;xs|sm|md|lg|xl|xxl&gt;</code> Removes padding on top and bottom of an element</li>
                <li><code>.remove-padding-horizontal-&lt;xs|sm|md|lg|xl|xxl&gt;</code> Removes padding at the left and right of an element</li>
            </ul>

            <h5>Shadow utilites</h5>
            <p>Shadow utilities are used to add or remove a box-shadow property on an element.</p>

            <ul class="list-none">
                <li><code>.has-shadow-xsmall</code> Adds a tiny shadow</li>
                <li><code>.has-shadow-small</code> Adds a small shadow</li>
                <li><code>.has-shadow-medium</code> Adds a medium shadow</li>
                <li><code>.has-shadow-large</code> Adds a large shadow</li>
                <li><code>.has-shadow-xlarge</code> Adds a extra large shadow</li>
                <li><code>.has-shadow-hover-xsmall</code> Adds a tiny shadow on element hover</li>
                <li><code>.has-shadow-hover-small</code> Adds a small shadow on element hover</li>
                <li><code>.has-shadow-hover-medium</code> Adds a medium shadow on element hover</li>
                <li><code>.has-shadow-hover-large</code> Adds a large shadow on element hover</li>
                <li><code>.has-shadow-hover-xlarge</code> Adds a extra large shadow on element hover</li>
                <li><code>.remove-shadow</code> Will remove the shadow</li>
                <li><code>.remove-shadow-hover</code> Will remove the shadow on hover</li>
            </ul>
            <div class="columns">
                <div class="column">
                    <div class="box box-white box-large has-shadow-xsmall remove-shadow-hover">
                        <code>.has-shadow-xsmall</code>
                    </div>
                </div>
                <div class="column">
                    <div class="box box-white box-large has-shadow-small remove-shadow-hover">
                        <code>.has-shadow-small</code>
                    </div>
                </div>
                <div class="column">
                    <div class="box box-white box-large has-shadow-medium remove-shadow-hover">
                        <code>.has-shadow-medium</code>
                    </div>
                </div>
                <div class="column">
                    <div class="box box-white box-large has-shadow-large remove-shadow-hover">
                        <code>.has-shadow-large</code>
                    </div>
                </div>
                <div class="column">
                    <div class="box box-white box-large has-shadow-xlarge remove-shadow-hover">
                        <code>.has-shadow-xlarge</code>
                    </div>
                </div>
            </div>
            <div class="columns">
                <div class="column">
                    <div class="box box-white box-large has-shadow-hover-xsmall">
                        <code>.has-shadow-hover-xsmall</code>
                    </div>
                </div>
                <div class="column">
                    <div class="box box-white box-large has-shadow-hover-small">
                        <code>.has-shadow-hover-small</code>
                    </div>
                </div>
                <div class="column">
                    <div class="box box-white box-large has-shadow-hover-medium">
                        <code>.has-shadow-hover-medium</code>
                    </div>
                </div>
                <div class="column">
                    <div class="box box-white box-large has-shadow-hover-large">
                        <code>.has-shadow-hover-large</code>
                    </div>
                </div>
                <div class="column">
                    <div class="box box-white box-large has-shadow-hover-xlarge">
                        <code>.has-shadow-hover-xlarge</code>
                    </div>
                </div>
            </div>

            <h5>Sizing & scaling utilites</h5>
            <p>Helper classes for upsizing and scaling of elements.</p>

            <ul class="list-none">
                <li><code>.has-size-x2</code> Multiplies the font size from 1em default by 2</li>
                <li><code>.has-size-x3</code> Multiplies the font size from 1em default by 3</li>
                <li><code>.has-size-x4</code> Multiplies the font size from 1em default by 4</li>
                <li><code>.has-size-x5</code> Multiplies the font size from 1em default by 5</li>
            </ul>

            <div class="columns">
                <div class="column">
                    <div class="box box-white box-large">
                        <span class="has-size-x2">2</span>
                    </div>
                </div>
                <div class="column">
                    <div class="box box-white box-large">
                        <span class="has-size-x3">3</span>
                    </div>
                </div>
                <div class="column">
                    <div class="box box-white box-large">
                        <span class="has-size-x4">4</span>
                    </div>
                </div>
                <div class="column">
                    <div class="box box-white box-large">
                        <span class="has-size-x5">5</span>
                    </div>
                </div>
            </div>

            <ul class="list-none">
                <li><code>.has-scale-x2</code> Scales an element by 2</li>
                <li><code>.has-scale-x3</code> Scales an element by 3</li>
                <li><code>.has-scale-x4</code> Scales an element by 4</li>
                <li><code>.has-scale-x5</code> Scales an element by 5</li>
            </ul>

            <div class="columns">
                <div class="column">
                    <div class="box box-white box-large">
                        <span class="has-scale-x2">2</span>
                    </div>
                </div>
                <div class="column">
                    <div class="box box-white box-large">
                        <span class="has-scale-x3">3</span>
                    </div>
                </div>
                <div class="column">
                    <div class="box box-white box-large">
                        <span class="has-scale-x4">4</span>
                    </div>
                </div>
                <div class="column">
                    <div class="box box-white box-large">
                        <span class="has-scale-x5">5</span>
                    </div>
                </div>
            </div>
            <h5>Colours & Background</h5>
            <p>Helper classes for color and background properties.</p>

            <ul class="list-none">
                <li><code>.has-text-white</code> <span class="has-text-white has-background-dark">Sample</span></li>
                <li><code>.has-text-black</code> <span class="has-text-black">Sample</span></li>
                <li><code>.has-text-default</code> <span class="has-text-default">Sample</span></li>
                <li><code>.has-text-primary</code> <span class="has-text-primary">Sample</span></li>
                <li><code>.has-text-secondary</code> <span class="has-text-secondary">Sample</span></li>
                <li><code>.has-text-link</code> <span class="has-text-link">Sample</span></li>
                <li><code>.has-text-light</code> <span class="has-text-light has-background-dark">Sample</span></li>
                <li><code>.has-text-lighter</code> <span class="has-text-lighter">Sample</span></li>
                <li><code>.has-text-darker</code> <span class="has-text-darker">Sample</span></li>
                <li><code>.has-text-dark</code> <span class="has-text-dark">Sample</span></li>
                <li><code>.has-text-error</code> <span class="has-text-error">Sample</span></li>
                <li><code>.has-text-success</code> <span class="has-text-success">Sample</span></li>
                <li><code>.has-text-notice</code> <span class="has-text-notice">Sample</span></li>
                <li><code>.has-text-warning</code> <span class="has-text-warning">Sample</span></li>
                <li><code>.has-text-highlight</code> <span class="has-text-highlight">Sample</span></li>
            </ul>
            <ul class="list-none">
                <li><code>.has-background-white</code> <span class="has-background-white has-text-dark">Sample</span></li>
                <li><code>.has-background-black</code> <span class="has-background-black has-text-white">Sample</span></li>
                <li><code>.has-background-default</code> <span class="has-background-default has-text-white">Sample</span></li>
                <li><code>.has-background-primary</code> <span class="has-background-primary has-text-white">Sample</span></li>
                <li><code>.has-background-secondary</code> <span class="has-background-secondary">Sample</span></li>
                <li><code>.has-background-link</code> <span class="has-background-link has-text-white">Sample</span></li>
                <li><code>.has-background-light</code> <span class="has-background-light has-text-dark">Sample</span></li>
                <li><code>.has-background-lighter</code> <span class="has-background-lighter has-text-dark">Sample</span></li>
                <li><code>.has-background-darker</code> <span class="has-background-darker">Sample</span></li>
                <li><code>.has-background-dark</code> <span class="has-background-dark has-text-white">Sample</span></li>
                <li><code>.has-background-error</code> <span class="has-background-error has-text-white">Sample</span></li>
                <li><code>.has-background-success</code> <span class="has-background-success has-text-white">Sample</span></li>
                <li><code>.has-background-notice</code> <span class="has-background-notice has-text-white">Sample</span></li>
                <li><code>.has-background-warning</code> <span class="has-background-warning has-text-white">Sample</span></li>
                <li><code>.has-background-highlight</code> <span class="has-background-highlight">Sample</span></li>
            </ul>
        </div>
        <h4 class="element-sticky" id="tables">Tables <a class="anchor" href="#tables" aria-hidden="true">#</a></h4>
        <div class="content">
            <h5>Default table</h5>

            <table class="table margin-vertical-medium">
                <thead>
                    <tr>
                        <th>Product Name</th>
                        <th>Format</th>
                        <th>Price</th>
                    </tr>
                </thead>
                <tfoot>
                    <tr>
                        <td></td>
                        <td><strong>Total:</strong></td>
                        <td><strong>171,10 &euro;</strong></td>
                    </tr>
                </tfoot>
                <tbody>
                    <tr>
                        <td>Star Wars: The Complete Saga (Episodes I-VI)</td>
                        <td>Blu-ray</td>
                        <td>84,96 &euro;</td>
                    </tr>
                    <tr>
                        <td>Guardians of the Galaxy</td>
                        <td>Blu-ray 3D</td>
                        <td>26,96 &euro;</td>
                    </tr>
                </tbody>
            </table>

            <h5>Striped table</h5>
            <table class="table table-striped margin-vertical-medium">
                <thead>
                    <tr>
                        <th>Product Name</th>
                        <th>Format</th>
                        <th>Price</th>
                    </tr>
                </thead>
                <tfoot>
                    <tr>
                        <td></td>
                        <td><strong>Total:</strong></td>
                        <td><strong>171,10 &euro;</strong></td>
                    </tr>
                </tfoot>
                <tbody>
                    <tr>
                        <td>Star Wars: The Complete Saga (Episodes I-VI)</td>
                        <td>Blu-ray</td>
                        <td>84,96 &euro;</td>
                    </tr>
                    <tr>
                        <td>Guardians of the Galaxy</td>
                        <td>Blu-ray 3D</td>
                        <td>26,96 &euro;</td>
                    </tr>
                </tbody>
            </table>

            <h5>Hover table</h5>
            <table class="table table-striped table-hover margin-vertical-medium">
                <thead>
                    <tr>
                        <th>Product Name</th>
                        <th>Format</th>
                        <th>Price</th>
                    </tr>
                </thead>
                <tfoot>
                    <tr>
                        <td></td>
                        <td><strong>Total:</strong></td>
                        <td><strong>171,10 &euro;</strong></td>
                    </tr>
                </tfoot>
                <tbody>
                    <tr>
                        <td>Star Wars: The Complete Saga (Episodes I-VI)</td>
                        <td>Blu-ray</td>
                        <td>84,96 &euro;</td>
                    </tr>
                    <tr>
                        <td>Guardians of the Galaxy</td>
                        <td>Blu-ray 3D</td>
                        <td>26,96 &euro;</td>
                    </tr>
                </tbody>
            </table>

            <h5>Scrollable table</h5>
            <div class="size-md">
                <table class="table table-scroll">
                    <thead>
                        <tr>
                            <th>Product Name</th>
                            <th>Product Name</th>
                            <th>Product Name</th>
                            <th>Format</th>
                            <th>Price</th>
                        </tr>
                    </thead>
                    <tfoot>
                        <tr>
                            <td></td>
                            <td><strong>Total:</strong></td>
                            <td><strong>171,10 &euro;</strong></td>
                        </tr>
                    </tfoot>
                    <tbody>
                        <tr>
                            <td>Star Wars: The Complete Saga (Episodes I-VI)</td>
                            <td>Star Wars: The Complete Saga (Episodes I-VI)</td>
                            <td>Star Wars: The Complete Saga (Episodes I-VI)</td>
                            <td>Blu-ray</td>
                            <td>84,96 &euro;</td>
                        </tr>
                        <tr>
                            <td>Guardians of the Galaxy</td>
                            <td>Guardians of the Galaxy</td>
                            <td>Guardians of the Galaxy</td>
                            <td>Blu-ray 3D</td>
                            <td>26,96 &euro;</td>
                        </tr>
                    </tbody>
                </table>
            </div>

            <h5>Responsive table</h5>
            <p>Responsive view of the table is applied if viewport size is equal or smaller than 600px. Table head text is only displayed when using <code>data-th</code> attribute with value inside table body <code>&lt;td&gt;</code> elements.</p>
            <pre rel='HTML'>
                <code>
&lt;table class="table table-responsive"&gt;
    &lt;thead>
        &lt;tr&gt;
            &lt;th&gt;Product Name&lt;/th&gt;
            &lt;th&gt;Format&lt;/th&gt;
            &lt;th&gt;Price&lt;/th&gt;
        &lt;/tr&gt;
    &lt;/thead&gt;
    &lt;tfoot&gt;
        &lt;tr&gt;
            &lt;td&gt;&lt;/td&gt;
            &lt;td&gt;&lt;strong&gt;Total:&lt;/strong&gt;&lt;/td&gt;
            &lt;td&gt;&lt;strong&gt;171,10 &euro;&lt;/strong&gt;&lt;/td&gt;
        &lt;/tr&gt;
    &lt;/tfoot&gt;
    &lt;tbody&gt;
        &lt;tr&gt;
            &lt;td data-th='Product name'&gt;Star Wars: The Complete Saga (Episodes I-VI)&lt;/td&gt;
            &lt;td data-th='Type'&gt;Blu-ray&lt;/td&gt;
            &lt;td data-th='Price'&gt;84,96 &euro;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td data-th='Product name'&gt;Guardians of the Galaxy&lt;/td&gt;
            &lt;td data-th='Type'&gt;Blu-ray 3D&lt;/td&gt;
            &lt;td data-th='Price'&gt;26,96 &euro;&lt;/td&gt;
        &lt;/tr&gt;
    &lt;/tbody&gt;
&lt;/table&gt;
                </code>
            </pre>
            <table class="table table-responsive margin-vertical-medium">
                <thead>
                    <tr>
                        <th>Product Name</th>
                        <th>Format</th>
                        <th>Price</th>
                    </tr>
                </thead>
                <tfoot>
                    <tr>
                        <td></td>
                        <td><strong>Total:</strong></td>
                        <td><strong>171,10 &euro;</strong></td>
                    </tr>
                </tfoot>
                <tbody>
                    <tr>
                        <td data-th='Product name'>Star Wars: The Complete Saga (Episodes I-VI)</td>
                        <td data-th='Type'>Blu-ray</td>
                        <td data-th='Price'>84,96 &euro;</td>
                    </tr>
                    <tr>
                        <td data-th='Product name'>Guardians of the Galaxy</td>
                        <td data-th='Type'>Blu-ray 3D</td>
                        <td data-th='Price'>26,96 &euro;</td>
                    </tr>
                </tbody>
            </table>
        </div>
        <h4 class="element-sticky" id="media">Media <a class="anchor" href="#media" aria-hidden="true">#</a></h4>
        <div class="content">
            <h5>Responsive images</h5>
            <p>Images are responsive by default.</p>

            <img src="https://picsum.photos/800/400?random=1" />

            <p>Add the <code>img-fit-contain</code> or <code>img-fit-cover</code> class to &lt;img&gt; or &lt;video&gt; elements.<br />
            The media will crop itself to fit inside the element as far supported by Browser.</p> 
            <div class="columns">
                <div class="column col-6 col-xs-12">
                    <figure>
                        <img src="https://picsum.photos/800/400?random=2" width="300" height="300" class="img-fit-contain" />
                    </figure>
                </div>
                <div class="column col-6 col-xs-12">
                    <figure>
                        <img src="https://picsum.photos/800/400?random=3" width="300" height="300" class="img-fit-cover" />
                    </figure>
                </div>
            </div>

            <h5>Figure &amp; Figcaption</h5>
            <div class="columns">
                <figure class="column col-6 col-xs-12">
                    <img src="https://picsum.photos/800/400?random=4" />
                    <figcaption>Lorem ispum</figcaption>
                </figure>
                <figure class="column col-6 col-xs-12">
                    <img src="https://picsum.photos/800/400?random=5" />
                    <figcaption>Lorem ispum</figcaption>
                </figure>
            </div>

            <h5>Video</h5>

            <div class="size-md">
                <div class="video-responsive">
                    <iframe width="560" height="315" src="https://www.youtube.com/embed/5Peo-ivmupE" allowfullscreen=""></iframe>
                </div>
            </div>
        </div>
        <h4 class="element-sticky" id="form">Form <a class="anchor" href="#form" aria-hidden="true">#</a></h4>
        <div class="content">
            <fieldset>
                <legend>This is a legend</legend>
                <div class="form-group">
                    <label class="form-label" for="input-example-1">Name</label>
                    <input class="input-field" type="text" id="input-example-1" placeholder="Name">
                </div>
                <div class="form-group">
                    <label class="form-label" for="input-example-2">Email</label>
                    <input class="input-field" type="email" id="input-example-2" placeholder="Name">
                </div>
                <div class="form-group">
                    <label class="form-label" for="input-example-3">Textarea</label>
                    <textarea class="input-field" id="input-example-3" placeholder="Textarea"></textarea>
                </div>
                <div class="form-group">
                    <label class="form-label" for="input-example-4">Select</label>
                    <select class="input-select" id="input-example-4">
                        <option>Option 1</option>
                        <option>Option 2</option>
                        <option>Option 3</option>
                    </select>
                </div>
                <div class="form-group">
                    <label class="form-label" for="input-example-4">Select multiple</label>
                    <select class="input-select" id="input-example-4" multiple>
                        <option>Option 1</option>
                        <option>Option 2</option>
                        <option>Option 3</option>
                    </select>
                </div>
                <div class="form-group">
                    <label class="form-label is-small" for="input-example-3">Small label</label>
                    <input class="input-field is-small" type="text" id="input-example-10" placeholder="Small input">
                </div>
                <div class="form-group">
                    <label class="form-label is-large" for="input-example-4">Large label</label>
                    <input class="input-field is-large" type="text" id="input-example-11" placeholder="Large input">
                    <span class="form-hint">This is a hint</span>
                </div>
                <div class="form-group">
                    <label class="input-checkbox">
                        <input type="checkbox">
                        <i class="input-icon"></i> Checkbox
                    </label>
                </div>
                <div class="form-group">
                    <label class="input-checkbox is-small">
                        <input type="checkbox">
                        <i class="input-icon"></i> Checkbox small
                    </label>
                </div>
                <div class="form-group">
                    <label class="input-checkbox is-large">
                        <input type="checkbox">
                        <i class="input-icon"></i> Checkbox large
                    </label>
                </div>
                <div class="form-group">
                    <label class="input-radio">
                        <input type="radio">
                        <i class="input-icon"></i> Radio
                    </label>
                </div>
                <div class="form-group">
                    <label class="input-radio is-small">
                        <input type="radio">
                        <i class="input-icon"></i> Radio small
                    </label>
                </div>
                <div class="form-group">
                    <label class="input-radio is-large">
                        <input type="radio">
                        <i class="input-icon"></i> Radio large
                    </label>
                </div>
                <h5>Validation states</h5>
                <div class="form-group has-error">
                    <label class="form-label" for="input-example-1">Error</label>
                    <input class="input-field" type="text" id="input-example-1" placeholder="Name">
                    <span class="form-hint">This is a hint</span>
                </div>
                <div class="form-group">
                    <label class="form-label" for="input-example-1">Success</label>
                    <input class="input-field is-success" type="text" id="input-example-1" placeholder="Name">
                    <span class="form-hint">This is a hint</span>
                </div>
                <div class="form-group">
                    <label class="input-checkbox is-error">
                        <input type="checkbox">
                        <i class="input-icon"></i> Checkbox
                    </label>
                </div>
                <div class="form-group">
                    <label class="input-radio is-error">
                        <input type="radio">
                        <i class="input-icon"></i> Radio
                    </label>
                </div>
                <div class="form-group has-success">
                    <label class="input-checkbox">
                        <input type="checkbox">
                        <i class="input-icon"></i> Checkbox
                    </label>
                </div>
                <div class="form-group has-success">
                    <label class="input-radio">
                        <input type="radio">
                        <i class="input-icon"></i> Radio
                    </label>
                </div>
                <div class="form-group has-error">
                    <label class="form-label" for="input-example-4">Select error</label>
                    <select class="input-select" id="input-example-4">
                        <option>Option 1</option>
                        <option>Option 2</option>
                        <option>Option 3</option>
                    </select>
                </div>
                <div class="form-group">
                    <label class="form-label" for="input-example-4">Select error</label>
                    <select class="input-select is-success" id="input-example-4">
                        <option>Option 1</option>
                        <option>Option 2</option>
                        <option>Option 3</option>
                    </select>
                </div>
                <h5>Disabled states</h5>
                <div class="form-group">
                    <label class="form-label" for="input-example-1">Name</label>
                    <input class="input-field" type="text" id="input-example-1" disabled placeholder="Name">
                </div>
                <div class="form-group">
                    <label class="form-label" for="input-example-2">Email</label>
                    <input class="input-field" type="email" id="input-example-2" disabled placeholder="Name">
                </div>
                <div class="form-group">
                    <label class="form-label" for="input-example-3">Textarea</label>
                    <textarea class="input-field" id="input-example-3" disabled placeholder="Textarea"></textarea>
                </div>
                <div class="form-group">
                    <label class="form-label" for="input-example-4">Select</label>
                    <select class="input-select" id="input-example-4" disabled>
                        <option>Option 1</option>
                        <option>Option 2</option>
                        <option>Option 3</option>
                    </select>
                </div>
                <div class="form-group">
                    <label class="form-label" for="input-example-4">Select multiple</label>
                    <select class="input-select" id="input-example-4" disabled multiple>
                        <option>Option 1</option>
                        <option>Option 2</option>
                        <option>Option 3</option>
                    </select>
                </div>
                <div class="form-group">
                    <label class="input-checkbox">
                        <input type="checkbox" disabled checked>
                        <i class="input-icon"></i> Checkbox
                    </label>
                </div>
                <div class="form-group">
                    <label class="input-radio">
                        <input type="radio" disabled>
                        <i class="input-icon"></i> Radio
                    </label>
                </div>
                <h5>Inline elements</h5>
                <div class="form-group">
                    <label class="input-checkbox input-inline">
                        <input type="checkbox"><i class="input-icon"></i> Checkbox 1
                    </label>
                    <label class="input-checkbox input-inline">
                        <input type="checkbox" checked=""><i class="input-icon"></i> Checkbox 2
                    </label>
                </div>
            </fieldset>
            <h5>Horizontal form</h5>
            <form class="form-horizontal size-sm">
                <fieldset>
                    <div class="form-group">
                        <div class="col-3 col-sm-12">
                            <label class="form-label" for="input-example-1">Name</label>
                        </div>
                        <div class="col-9 col-sm-12">
                            <input class="input-field" type="text" id="input-example-1" placeholder="Name">
                        </div>
                    </div>
                </fieldset>
            </form>
            <h5>Input groups</h5>
            <fieldset>
                <div class="form-group is-group">
                    <select class="input-select" id="input-example-4">
                        <option>Option 1</option>
                        <option>Option 2</option>
                        <option>Option 3</option>
                    </select>
                    <input type="text" class="input-field" placeholder="Text">
                </div>
                <div class="form-group is-group">
                    <label class="input-checkbox">
                        <input type="checkbox" ><i class="input-icon"></i>
                    </label>
                    <input type="search" class="input-field" placeholder="Text...">
                </div>
                <div class="form-group is-group">
                    <span class="input-addon">https://</span>
                    <input type="url" class="input-field" placeholder="www.exors.us">
                    <button class="input-group-btn btn btn-primary">Submit</button>
                </div>
            </fieldset>
        </div>
        <h4 class="element-sticky" id="buttons">Buttons <a class="anchor" href="#buttons" aria-hidden="true">#</a></h4>
        <p>Buttons include styles for a basic button and interactive appearance of action buttons.</p>

        <div class="content">
            <h5>Default Buttons</h5>
            <p>A simple and most basic button can be achieved with <code>.btn</code>. By applying manipulator classes for colours, appearance and size you can change the style of a button.
            With <code>.is-selected</code> manipulator class you can add a selected state to a button.</p>
            <ul class="list-none">
                <li><code>.btn</code> Default button style</li>
                <li><code>.btn .is-disabled</code> Will apply a disabled state of a button style</li>
                <li><code>.btn .is-primary</code> Will apply a primary colour which is predefined in variables</li>
                <li><code>.btn .is-secondary</code> Will apply a secondary colour which is predefined in variables</li>
                <li><code>.btn .is-link</code> Will apply a link text style to the button</li>
                <li><code>.btn .is-white</code> Will apply a plain white colour to the button</li>
                <li><code>.btn .is-black</code> Will apply a plain black colour which is predefined in variables</li>
                <li><code>.btn .is-default</code> Will apply a default colour which is predefined in variables which is applied to default text colour</li>
                <li><code>.btn .is-light</code> Will apply a light colour which is predefined in variables</li>
                <li><code>.btn .is-lighter</code> Will apply a lighter colour which is predefined in variables</li>
                <li><code>.btn .is-darker</code> Will apply a darker colour which is predefined in variables</li>
                <li><code>.btn .is-dark</code> Will apply a dark colour which is predefined in variables</li>
                <li><code>.btn .is-error</code> Will apply a error or danger state to the button</li>
                <li><code>.btn .is-success</code> Will apply a success state to the button</li>
                <li><code>.btn .is-warning</code> Will apply a warning state to the button</li>
                <li><code>.btn .is-notice</code> Will apply a notice state to the button</li>
                <li><code>.btn .is-highlight</code> Will apply a highlight coliur predefined in the variables</li>
            </ul>
            <button class="btn">button</button>
            <button class="btn is-primary">primary button</button>
            <button class="btn is-link">link button</button>
            <button class="btn" disabled>disabled button</button>
            <button class="btn is-white">white button</button>
            <button class="btn is-black">black button</button>
            <button class="btn is-dark">dark button</button>
            <button class="btn is-default">default button</button>
            <button class="btn is-secondary">secondary button</button>
            <button class="btn is-light">light button</button>
            <button class="btn is-lighter">lighter button</button>
            <button class="btn is-darker">darker button</button>
            <button class="btn is-error">error button</button>
            <button class="btn is-success">success button</button>
            <button class="btn is-warning">warning button</button>
            <button class="btn is-notice">notice button</button>
            <button class="btn is-highlight">highlight button</button>
        </div>
        <div class="content">
            <h5>Outlined Buttons</h5>
            <p>By adding a manipulator class <code>.is-outlined</code> the appearance of a button can be changed to an outlined style.</p>
            <button class="btn is-primary is-outlined">primary button</button>
            <button class="btn is-black is-outlined">black button</button>
            <button class="btn is-dark is-outlined">dark button</button>
            <button class="btn is-default is-outlined">default button</button>
            <button class="btn is-secondary is-outlined">secondary button</button>
            <button class="btn is-darker is-outlined">darker button</button>
            <button class="btn is-error is-outlined">error button</button>
            <button class="btn is-success is-outlined">success button</button>
            <button class="btn is-warning is-outlined">warning button</button>
            <button class="btn is-notice is-outlined">notice button</button>
            <a href="#" class="btn is-highlight is-outlined">highlight button</a>
        </div>
        <div class="content">
            <h5>Sizes</h5>
            <p>By adding a manipulator class <code>.is-small</code> or <code>.is-large</code> the size of a button can be changed to.</p>
            <button class="btn is-small">Small</button>
            <button class="btn is-large">Large</button>
        </div>
        <div class="content">
            <h5>Full width</h5>
            <p>By adding a manipulator class <code>.is-full</code> the width of a button can be changed to a full width of parent element.</p>
            <button class="btn is-small is-full">Small</button>
            <button class="btn is-large is-full">Large</button>
        </div>
        <div class="content">
            <h5>Input group</h5>
            <p>Attaching buttons together using <code>.is-group</code> wrapping element.</p>
            <div class="is-group">
                <button class="btn is-small">Small</button>
                <button class="btn is-small">Small</button>
                <button class="btn is-small">Small</button>
            </div>
            <div class="is-group">
                <button class="btn is-large">Large</button>
                <button class="btn is-large">Large</button>
                <button class="btn is-large">Large</button>
            </div>
            <div class="is-group is-group-full">
                <button class="btn is-large">Large</button>
                <button class="btn is-large">Large</button>
                <button class="btn is-large">Large</button>
            </div>
            <p>A buttons list can be simply achieved with <code>.has-group</code> parent element.</p>
            <div class="has-group">
                <button class="btn is-small">Small button</button>
                <button class="btn is-small">Small button in group</button>
                <button class="btn is-small">Small button</button>
                <button class="btn is-small">Small button</button>
                <button class="btn is-small">Small button</button>
                <button class="btn is-small">Small button</button>
                <div class="is-group">
                    <button class="btn is-small">Small button</button>
                    <button class="btn is-small">Small button</button>
                </div>
                <button class="btn is-small">Small button</button>
            </div>

            <h5>Input with icon</h5>
            <button class="btn is-small">
                <span class="icon">
                    <svg class="svg-inline--fa fa-github" aria-hidden="true"  role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 496 512"><path fill="currentColor" d="M165.9 397.4c0 2-2.3 3.6-5.2 3.6-3.3.3-5.6-1.3-5.6-3.6 0-2 2.3-3.6 5.2-3.6 3-.3 5.6 1.3 5.6 3.6zm-31.1-4.5c-.7 2 1.3 4.3 4.3 4.9 2.6 1 5.6 0 6.2-2s-1.3-4.3-4.3-5.2c-2.6-.7-5.5.3-6.2 2.3zm44.2-1.7c-2.9.7-4.9 2.6-4.6 4.9.3 2 2.9 3.3 5.9 2.6 2.9-.7 4.9-2.6 4.6-4.6-.3-1.9-3-3.2-5.9-2.9zM244.8 8C106.1 8 0 113.3 0 252c0 110.9 69.8 205.8 169.5 239.2 12.8 2.3 17.3-5.6 17.3-12.1 0-6.2-.3-40.4-.3-61.4 0 0-70 15-84.7-29.8 0 0-11.4-29.1-27.8-36.6 0 0-22.9-15.7 1.6-15.4 0 0 24.9 2 38.6 25.8 21.9 38.6 58.6 27.5 72.9 20.9 2.3-16 8.8-27.1 16-33.7-55.9-6.2-112.3-14.3-112.3-110.5 0-27.5 7.6-41.3 23.6-58.9-2.6-6.5-11.1-33.3 2.6-67.9 20.9-6.5 69 27 69 27 20-5.6 41.5-8.5 62.8-8.5s42.8 2.9 62.8 8.5c0 0 48.1-33.6 69-27 13.7 34.7 5.2 61.4 2.6 67.9 16 17.7 25.8 31.5 25.8 58.9 0 96.5-58.9 104.2-114.8 110.5 9.2 7.9 17 22.9 17 46.4 0 33.7-.3 75.4-.3 83.6 0 6.5 4.6 14.4 17.3 12.1C428.2 457.8 496 362.9 496 252 496 113.3 383.5 8 244.8 8zM97.2 352.9c-1.3 1-1 3.3.7 5.2 1.6 1.6 3.9 2.3 5.2 1 1.3-1 1-3.3-.7-5.2-1.6-1.6-3.9-2.3-5.2-1zm-10.8-8.1c-.7 1.3.3 2.9 2.3 3.9 1.6 1 3.6.7 4.3-.7.7-1.3-.3-2.9-2.3-3.9-2-.6-3.6-.3-4.3.7zm32.4 35.6c-1.6 1.3-1 4.3 1.3 6.2 2.3 2.3 5.2 2.6 6.5 1 1.3-1.3.7-4.3-1.3-6.2-2.2-2.3-5.2-2.6-6.5-1zm-11.4-14.7c-1.6 1-1.6 3.6 0 5.9 1.6 2.3 4.3 3.3 5.6 2.3 1.6-1.3 1.6-3.9 0-6.2-1.4-2.3-4-3.3-5.6-2z"></path></svg>
                </span>
                <span>Button icon</span>
            </button>
            <button class="btn">
                <span class="icon">
                    <svg class="svg-inline--fa fa-github" aria-hidden="true" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 496 512"><path fill="currentColor" d="M165.9 397.4c0 2-2.3 3.6-5.2 3.6-3.3.3-5.6-1.3-5.6-3.6 0-2 2.3-3.6 5.2-3.6 3-.3 5.6 1.3 5.6 3.6zm-31.1-4.5c-.7 2 1.3 4.3 4.3 4.9 2.6 1 5.6 0 6.2-2s-1.3-4.3-4.3-5.2c-2.6-.7-5.5.3-6.2 2.3zm44.2-1.7c-2.9.7-4.9 2.6-4.6 4.9.3 2 2.9 3.3 5.9 2.6 2.9-.7 4.9-2.6 4.6-4.6-.3-1.9-3-3.2-5.9-2.9zM244.8 8C106.1 8 0 113.3 0 252c0 110.9 69.8 205.8 169.5 239.2 12.8 2.3 17.3-5.6 17.3-12.1 0-6.2-.3-40.4-.3-61.4 0 0-70 15-84.7-29.8 0 0-11.4-29.1-27.8-36.6 0 0-22.9-15.7 1.6-15.4 0 0 24.9 2 38.6 25.8 21.9 38.6 58.6 27.5 72.9 20.9 2.3-16 8.8-27.1 16-33.7-55.9-6.2-112.3-14.3-112.3-110.5 0-27.5 7.6-41.3 23.6-58.9-2.6-6.5-11.1-33.3 2.6-67.9 20.9-6.5 69 27 69 27 20-5.6 41.5-8.5 62.8-8.5s42.8 2.9 62.8 8.5c0 0 48.1-33.6 69-27 13.7 34.7 5.2 61.4 2.6 67.9 16 17.7 25.8 31.5 25.8 58.9 0 96.5-58.9 104.2-114.8 110.5 9.2 7.9 17 22.9 17 46.4 0 33.7-.3 75.4-.3 83.6 0 6.5 4.6 14.4 17.3 12.1C428.2 457.8 496 362.9 496 252 496 113.3 383.5 8 244.8 8zM97.2 352.9c-1.3 1-1 3.3.7 5.2 1.6 1.6 3.9 2.3 5.2 1 1.3-1 1-3.3-.7-5.2-1.6-1.6-3.9-2.3-5.2-1zm-10.8-8.1c-.7 1.3.3 2.9 2.3 3.9 1.6 1 3.6.7 4.3-.7.7-1.3-.3-2.9-2.3-3.9-2-.6-3.6-.3-4.3.7zm32.4 35.6c-1.6 1.3-1 4.3 1.3 6.2 2.3 2.3 5.2 2.6 6.5 1 1.3-1.3.7-4.3-1.3-6.2-2.2-2.3-5.2-2.6-6.5-1zm-11.4-14.7c-1.6 1-1.6 3.6 0 5.9 1.6 2.3 4.3 3.3 5.6 2.3 1.6-1.3 1.6-3.9 0-6.2-1.4-2.3-4-3.3-5.6-2z"></path></svg>
                </span>
                <span>Button icon</span>
            </button>
            <button class="btn is-large">
                <span class="icon is-large">
                    <svg class="svg-inline--fa fa-github" aria-hidden="true" data-prefix="fab" data-icon="github" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 496 512" data-fa-i2svg=""><path fill="currentColor" d="M165.9 397.4c0 2-2.3 3.6-5.2 3.6-3.3.3-5.6-1.3-5.6-3.6 0-2 2.3-3.6 5.2-3.6 3-.3 5.6 1.3 5.6 3.6zm-31.1-4.5c-.7 2 1.3 4.3 4.3 4.9 2.6 1 5.6 0 6.2-2s-1.3-4.3-4.3-5.2c-2.6-.7-5.5.3-6.2 2.3zm44.2-1.7c-2.9.7-4.9 2.6-4.6 4.9.3 2 2.9 3.3 5.9 2.6 2.9-.7 4.9-2.6 4.6-4.6-.3-1.9-3-3.2-5.9-2.9zM244.8 8C106.1 8 0 113.3 0 252c0 110.9 69.8 205.8 169.5 239.2 12.8 2.3 17.3-5.6 17.3-12.1 0-6.2-.3-40.4-.3-61.4 0 0-70 15-84.7-29.8 0 0-11.4-29.1-27.8-36.6 0 0-22.9-15.7 1.6-15.4 0 0 24.9 2 38.6 25.8 21.9 38.6 58.6 27.5 72.9 20.9 2.3-16 8.8-27.1 16-33.7-55.9-6.2-112.3-14.3-112.3-110.5 0-27.5 7.6-41.3 23.6-58.9-2.6-6.5-11.1-33.3 2.6-67.9 20.9-6.5 69 27 69 27 20-5.6 41.5-8.5 62.8-8.5s42.8 2.9 62.8 8.5c0 0 48.1-33.6 69-27 13.7 34.7 5.2 61.4 2.6 67.9 16 17.7 25.8 31.5 25.8 58.9 0 96.5-58.9 104.2-114.8 110.5 9.2 7.9 17 22.9 17 46.4 0 33.7-.3 75.4-.3 83.6 0 6.5 4.6 14.4 17.3 12.1C428.2 457.8 496 362.9 496 252 496 113.3 383.5 8 244.8 8zM97.2 352.9c-1.3 1-1 3.3.7 5.2 1.6 1.6 3.9 2.3 5.2 1 1.3-1 1-3.3-.7-5.2-1.6-1.6-3.9-2.3-5.2-1zm-10.8-8.1c-.7 1.3.3 2.9 2.3 3.9 1.6 1 3.6.7 4.3-.7.7-1.3-.3-2.9-2.3-3.9-2-.6-3.6-.3-4.3.7zm32.4 35.6c-1.6 1.3-1 4.3 1.3 6.2 2.3 2.3 5.2 2.6 6.5 1 1.3-1.3.7-4.3-1.3-6.2-2.2-2.3-5.2-2.6-6.5-1zm-11.4-14.7c-1.6 1-1.6 3.6 0 5.9 1.6 2.3 4.3 3.3 5.6 2.3 1.6-1.3 1.6-3.9 0-6.2-1.4-2.3-4-3.3-5.6-2z"></path></svg>
                </span>
                <span>Button icon</span>
            </button>
        </div>
        <h4 class="element-sticky" id="notifications">Notifications <a class="anchor" href="#notifications" aria-hidden="true">#</a></h4>
        <p>Notification styles are used for various alert messages.</p>
        <div class="content">
            <pre rel='HTML'>
                <code>
&lt;div class="notification"&gt;
    &lt;button class="btn-clear"&gt;&lt;/button&gt;
    Primar lorem ipsum dolor sit amet, consectetur.
&lt;/div&gt;
                </code>
            </pre>
            <ul class="list-none">
                <li><code>.notification</code> Default notification style</li>
                <li><code>.notification.is-primary</code></li>
                <li><code>.notification.is-secondary</code></li>
                <li><code>.notification.is-link</code></li>
                <li><code>.notification.is-error</code></li>
                <li><code>.notification.is-success</code></li>
                <li><code>.notification.is-warning</code></li>
                <li><code>.notification.is-notice</code></li>
                <li><code>.notification.is-highlight</code></li>
            </ul>
            <div class="size-md">
                <div class="notification">
                    <button class="btn-clear icon-clear"></button>
    Primar lorem ipsum dolor sit amet, consectetur
    adipiscing elit lorem ipsum dolor. <strong>Pellentesque risus mi</strong>, <a href="#">tempus quis</a> placerat ut, porta nec nulla. Vestibulum rhoncus ac ex sit amet fringilla. Nullam gravida purus diam, et dictum <a>felis venenatis</a> efficitur. Sit amet,
    consectetur adipiscing elit
                </div>
                <div class="notification is-primary">
                    <button class="btn-clear icon-clear"></button>
    Primar lorem ipsum dolor sit amet, consectetur
    adipiscing elit lorem ipsum dolor. <strong>Pellentesque risus mi</strong>, <a href="#">tempus quis</a> placerat ut, porta nec nulla. Vestibulum rhoncus ac ex sit amet fringilla. Nullam gravida purus diam, et dictum <a>felis venenatis</a> efficitur. Sit amet,
    consectetur adipiscing elit
                </div>
                <div class="notification is-secondary">
                    <button class="btn-clear icon-clear"></button>
    Primar lorem ipsum dolor sit amet, consectetur
    adipiscing elit lorem ipsum dolor. <strong>Pellentesque risus mi</strong>, <a href="#">tempus quis</a> placerat ut, porta nec nulla. Vestibulum rhoncus ac ex sit amet fringilla. Nullam gravida purus diam, et dictum <a>felis venenatis</a> efficitur. Sit amet,
    consectetur adipiscing elit
                </div>
                <div class="notification is-link">
                    <button class="btn-clear icon-clear"></button>
    Primar lorem ipsum dolor sit amet, consectetur
    adipiscing elit lorem ipsum dolor. <strong>Pellentesque risus mi</strong>, <a href="#">tempus quis</a> placerat ut, porta nec nulla. Vestibulum rhoncus ac ex sit amet fringilla. Nullam gravida purus diam, et dictum <a>felis venenatis</a> efficitur. Sit amet,
    consectetur adipiscing elit
                </div>
                <div class="notification is-error">
                    <button class="btn-clear icon-clear"></button>
    Primar lorem ipsum dolor sit amet, consectetur
    adipiscing elit lorem ipsum dolor. <strong>Pellentesque risus mi</strong>, <a href="#">tempus quis</a> placerat ut, porta nec nulla. Vestibulum rhoncus ac ex sit amet fringilla. Nullam gravida purus diam, et dictum <a>felis venenatis</a> efficitur. Sit amet,
    consectetur adipiscing elit
                </div>
                <div class="notification is-success">
                    <button class="btn-clear icon-clear"></button>
    Primar lorem ipsum dolor sit amet, consectetur
    adipiscing elit lorem ipsum dolor. <strong>Pellentesque risus mi</strong>, <a href="#">tempus quis</a> placerat ut, porta nec nulla. Vestibulum rhoncus ac ex sit amet fringilla. Nullam gravida purus diam, et dictum <a>felis venenatis</a> efficitur. Sit amet,
    consectetur adipiscing elit
                </div>
                <div class="notification is-warning">
                    <button class="btn-clear icon-clear"></button>
    Primar lorem ipsum dolor sit amet, consectetur
    adipiscing elit lorem ipsum dolor. <strong>Pellentesque risus mi</strong>, <a href="#">tempus quis</a> placerat ut, porta nec nulla. Vestibulum rhoncus ac ex sit amet fringilla. Nullam gravida purus diam, et dictum <a>felis venenatis</a> efficitur. Sit amet,
    consectetur adipiscing elit
                </div>
                <div class="notification is-notice">
                    <button class="btn-clear icon-clear"></button>
    Primar lorem ipsum dolor sit amet, consectetur
    adipiscing elit lorem ipsum dolor. <strong>Pellentesque risus mi</strong>, <a href="#">tempus quis</a> placerat ut, porta nec nulla. Vestibulum rhoncus ac ex sit amet fringilla. Nullam gravida purus diam, et dictum <a>felis venenatis</a> efficitur. Sit amet,
    consectetur adipiscing elit
                </div>
                <div class="notification is-highlight">
                    <button class="btn-clear icon-clear"></button>
    Primar lorem ipsum dolor sit amet, consectetur
    adipiscing elit lorem ipsum dolor. <strong>Pellentesque risus mi</strong>, <a href="#">tempus quis</a> placerat ut, porta nec nulla. Vestibulum rhoncus ac ex sit amet fringilla. Nullam gravida purus diam, et dictum <a>felis venenatis</a> efficitur. Sit amet,
    consectetur adipiscing elit
                </div>
                <div class="notification is-highlight is-small">
                    <button class="btn-clear icon-clear"></button>
    Primar lorem ipsum dolor sit amet, consectetur
    adipiscing elit lorem ipsum dolor. <strong>Pellentesque risus mi</strong>, <a href="#">tempus quis</a> placerat ut, porta nec nulla. Vestibulum rhoncus ac ex sit amet fringilla. Nullam gravida purus diam, et dictum <a>felis venenatis</a> efficitur. Sit amet,
    consectetur adipiscing elit
                </div>
                <div class="notification is-notice is-large">
                    <button class="btn-clear icon-clear"></button>
    Primar lorem ipsum dolor sit amet, consectetur
    adipiscing elit lorem ipsum dolor. <strong>Pellentesque risus mi</strong>, <a href="#">tempus quis</a> placerat ut, porta nec nulla. Vestibulum rhoncus ac ex sit amet fringilla. Nullam gravida purus diam, et dictum <a>felis venenatis</a> efficitur. Sit amet,
    consectetur adipiscing elit
                </div>
            </div>
        </div>
        <h4 class="element-sticky" id="tags">Tags <a class="anchor" href="#tags" aria-hidden="true">#</a></h4>
        <div class="content">
            <p>Tags are simple entities to insert anywhere as a label or tag.</p>
            <ul class="list-none">
                <li><code>.tag</code> Default tag style</li>
                <li><code>.tag.is-primary</code></li>
                <li><code>.tag.is-secondary</code></li>
                <li><code>.tag.is-link</code></li>
                <li><code>.tag.is-white</code></li>
                <li><code>.tag.is-black</code></li>
                <li><code>.tag.is-light</code></li>
                <li><code>.tag.is-lighter</code></li>
                <li><code>.tag.is-darker</code></li>
                <li><code>.tag.is-dark</code></li>
                <li><code>.tag.is-error</code></li>
                <li><code>.tag.is-success</code></li>
                <li><code>.tag.is-warning</code></li>
                <li><code>.tag.is-notice</code></li>
                <li><code>.tag.is-highlight</code></li>
            </ul>

            <span class="tag">Basic</span>
            <span class="tag is-default">Default</span>
            <span class="tag is-primary">Primary</span>
            <span class="tag is-secondary">Secondary</span>
            <span class="tag is-link">Link</span>
            <span class="tag is-white">White</span>
            <span class="tag is-black">Black</span>
            <span class="tag is-light">Light</span>
            <span class="tag is-lighter">Lighter</span>
            <span class="tag is-darker">Darker</span>
            <span class="tag is-dark">Dark</span>
            <span class="tag is-error">Error</span>
            <span class="tag is-success">Success</span>
            <span class="tag is-warning">Warning</span>
            <span class="tag is-notice">Notice</span>
            <span class="tag is-highlight">Highlight</span>

            <h5>Size variations</h5>
            <p>Size of a tag can be changed by manipulator classes <code>.is-small</code> or <code>.is-large</code> and if you need to reset to default size use <code>.is-medium</code>.</p>
            <span class="tag is-primary is-small">small</span>
            <span class="tag is-primary is-medium">default</span>
            <span class="tag is-primary is-large">large</span>
            <span class="tag is-error is-small">small <button class="btn-clear"></button></span>
            <span class="tag is-error is-medium">default <button class="btn-clear"></button></span>

            <h5>Grouping the tags</h5>
            <p>A tags list with equal spacing can be simply achieved by <code>.has-group</code> parent element.</p>
            <div class="has-group">
                <span class="tag is-dark">Dark</span>
                <span class="tag is-error">Error</span>
                <span class="tag is-success">Success</span>
                <span class="tag is-warning">Warning</span>
                <span class="tag is-notice">Notice</span>
            </div>
            <p>Or grouping tags together with <code>.is-group</code> parent element.</p>
            <pre rel='HTML'>
                <code>
&lt;div class="is-group"&gt;
    &lt;span class="tag is-default"&gt;Default&lt;/span&gt;
    &lt;span class="tag"&gt;1.0&lt;/span&gt;
&lt;/div&gt;
                </code>
            </pre>
            <div class="is-group">
                <span class="tag is-default">Default</span>
                <span class="tag">1.0</span>
            </div>
            <p>Or multiple grouped tags inside a <code>.has-group</code>.</p>
            <pre rel='HTML'>
                <code>
&lt;div class="has-group"&gt;
    &lt;div class="is-group"&gt;
        &lt;span class="tag is-dark"&gt;Dark&lt;/span&gt;
        &lt;span class="tag is-error"&gt;Error&lt;/span&gt;
    &lt;/div&gt;
    &lt;div class="is-group"&gt;
        &lt;span class="tag is-success"&gt;Success&lt;/span&gt;
        &lt;span class="tag is-warning"&gt;Warning&lt;/span&gt;
    &lt;/div&gt;
    &lt;span class="tag is-notice"&gt;Notice&lt;/span&gt;
&lt;/div&gt;
                </code>
            </pre>
            <div class="has-group">
                <div class="is-group">
                    <span class="tag is-dark">Dark</span>
                    <span class="tag is-error">Error</span>
                </div>
                <div class="is-group">
                    <span class="tag is-success">Success</span>
                    <span class="tag is-warning">Warning</span>
                </div>
                <span class="tag is-notice">Notice</span>
            </div>
        </div>
        <h4 class="element-sticky" id="card">Card <a class="anchor" href="#card" aria-hidden="true">#</a></h4>
        <div class="content">

            <div class="columns">
                <div class="column col-4 col-md-6 col-sm-12">
                    <div class="card has-shadow-medium">
                        <div class="card-media">
                            <img src="https://picsum.photos/600/400?random=10" width="600" height="400" class="img-responsive" />
                        </div>
                        <div class="card-header">
                            <hgroup>
                                <h1 class="h4">Cum sociis natoque penatibus</h1>
                                <h2 class="h5 has-text-primary text-light">et magnis dis parturient montes</h2>
                            </hgroup>
                        </div>
                        <div class="card-content">
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus nec iaculis mauris.</p>
                        </div>
                        <div class="card-footer">
                            <button class="btn is-success">View more</button>
                        </div>
                    </div>
                </div>
                <div class="column col-4 col-md-6 col-sm-12">
                    <div class="card has-shadow-medium remove-shadow-hover has-border">
                        <div class="card-header has-border">
                            <hgroup>
                                <h1 class="h4">Cum sociis natoque penatibus</h1>
                                <h2 class="h5 has-text-primary text-light">et magnis dis parturient montes</h2>
                            </hgroup>
                        </div>
                        <div class="card-content">
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus nec iaculis mauris.</p>
                        </div>
                        <div class="card-media">
                            <img src="https://picsum.photos/600/400?random=11" width="600" height="400" class="img-responsive" />
                        </div>
                        <div class="card-footer">
                            <button class="btn is-small">Small button</button> <button class="btn is-primary is-small">Small button</button>
                        </div>
                    </div>
                </div>
                <div class="column col-4 col-md-6 col-sm-12">
                    <div class="card has-shadow-small">
                        <header class="card-header">
                            <h1 class="h4">Cum sociis natoque penatibus</h1>
                        </header>
                        <article class="card-content has-border">
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus nec iaculis mauris.</p>
                        </article>
                        <footer class="card-footer has-items has-border">
                            <div class="card-item">
                                <a href="#">Card item</a>
                            </div>
                            <div class="card-item">
                                <a href="#">Card item</a>
                            </div>
                            <div class="card-item">
                                <a href="#">Card item</a>
                            </div>
                        </footer>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
