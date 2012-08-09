.class public Lcom/facebook/katana/MyTabHost;
.super Landroid/widget/TabHost;
.source "MyTabHost.java"


# instance fields
.field protected a:Landroid/app/LocalActivityManager;

.field private b:Landroid/view/ViewGroup;

.field private c:Landroid/widget/FrameLayout;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/MyTabHost$TabSpec;",
            ">;"
        }
    .end annotation
.end field

.field private e:I

.field private f:Landroid/view/View;

.field private g:Lcom/facebook/katana/MyTabHost$OnTabChangeListener;

.field private h:Landroid/view/View$OnKeyListener;

.field private i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 47
    invoke-direct {p0, p1}, Landroid/widget/TabHost;-><init>(Landroid/content/Context;)V

    .line 31
    iput-object v2, p0, Lcom/facebook/katana/MyTabHost;->b:Landroid/view/ViewGroup;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/katana/MyTabHost;->d:Ljava/util/List;

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/katana/MyTabHost;->e:I

    .line 35
    iput-object v2, p0, Lcom/facebook/katana/MyTabHost;->f:Landroid/view/View;

    .line 36
    iput-object v2, p0, Lcom/facebook/katana/MyTabHost;->a:Landroid/app/LocalActivityManager;

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/katana/MyTabHost;->i:Z

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 57
    invoke-direct {p0, p1, p2}, Landroid/widget/TabHost;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    iput-object v2, p0, Lcom/facebook/katana/MyTabHost;->b:Landroid/view/ViewGroup;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/katana/MyTabHost;->d:Ljava/util/List;

    .line 34
    iput v3, p0, Lcom/facebook/katana/MyTabHost;->e:I

    .line 35
    iput-object v2, p0, Lcom/facebook/katana/MyTabHost;->f:Landroid/view/View;

    .line 36
    iput-object v2, p0, Lcom/facebook/katana/MyTabHost;->a:Landroid/app/LocalActivityManager;

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/katana/MyTabHost;->i:Z

    .line 59
    iput v3, p0, Lcom/facebook/katana/MyTabHost;->e:I

    .line 60
    iput-object v2, p0, Lcom/facebook/katana/MyTabHost;->f:Landroid/view/View;

    .line 61
    return-void
.end method

.method static synthetic a(Lcom/facebook/katana/MyTabHost;)Landroid/widget/FrameLayout;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/facebook/katana/MyTabHost;->c:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 321
    iget-object v0, p0, Lcom/facebook/katana/MyTabHost;->g:Lcom/facebook/katana/MyTabHost$OnTabChangeListener;

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/facebook/katana/MyTabHost;->g:Lcom/facebook/katana/MyTabHost$OnTabChangeListener;

    invoke-virtual {p0}, Lcom/facebook/katana/MyTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/katana/MyTabHost$OnTabChangeListener;->a(Ljava/lang/String;)V

    .line 324
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Landroid/view/View;)Lcom/facebook/katana/MyTabHost$TabSpec;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 72
    new-instance v0, Lcom/facebook/katana/MyTabHost$TabSpec;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/facebook/katana/MyTabHost$TabSpec;-><init>(Lcom/facebook/katana/MyTabHost;Ljava/lang/String;Landroid/view/View;B)V

    return-object v0
.end method

.method public final a(Lcom/facebook/katana/MyTabHost$TabSpec;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 154
    iget-object v0, p1, Lcom/facebook/katana/MyTabHost$TabSpec;->b:Landroid/view/View;

    if-nez v0, :cond_0

    .line 155
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "you must set the tab indicator view."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_0
    invoke-static {p1}, Lcom/facebook/katana/MyTabHost$TabSpec;->a(Lcom/facebook/katana/MyTabHost$TabSpec;)Lcom/facebook/katana/MyTabHost$ContentStrategy;

    move-result-object v0

    if-nez v0, :cond_1

    .line 159
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "you must specify a way to create the tab content"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_1
    iget-object v0, p1, Lcom/facebook/katana/MyTabHost$TabSpec;->b:Landroid/view/View;

    .line 162
    iget-object v1, p0, Lcom/facebook/katana/MyTabHost;->h:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 163
    iget-object v1, p0, Lcom/facebook/katana/MyTabHost;->d:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    iget v1, p0, Lcom/facebook/katana/MyTabHost;->e:I

    if-ne v1, v3, :cond_2

    .line 166
    invoke-virtual {p0, v4}, Lcom/facebook/katana/MyTabHost;->setCurrentTab(I)V

    .line 169
    :cond_2
    iget-object v1, p0, Lcom/facebook/katana/MyTabHost;->b:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 170
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x3f80

    invoke-direct {v1, v4, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 172
    return-void
.end method

.method public final a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 145
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/katana/MyTabHost;->i:Z

    .line 146
    return-void
.end method

.method public clearAllTabs()V
    .locals 1

    .prologue
    .line 177
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/katana/MyTabHost;->e:I

    .line 178
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/katana/MyTabHost;->f:Landroid/view/View;

    .line 180
    iget-object v0, p0, Lcom/facebook/katana/MyTabHost;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 181
    iget-object v0, p0, Lcom/facebook/katana/MyTabHost;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 182
    invoke-virtual {p0}, Lcom/facebook/katana/MyTabHost;->requestLayout()V

    .line 183
    invoke-virtual {p0}, Lcom/facebook/katana/MyTabHost;->invalidate()V

    .line 184
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter

    .prologue
    .line 242
    iget-object v0, p0, Lcom/facebook/katana/MyTabHost;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 243
    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x13

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/facebook/katana/MyTabHost;->f:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/facebook/katana/MyTabHost;->f:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x21

    invoke-virtual {v1, v2}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    .line 249
    iget-object v0, p0, Lcom/facebook/katana/MyTabHost;->d:Ljava/util/List;

    iget v1, p0, Lcom/facebook/katana/MyTabHost;->e:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/MyTabHost$TabSpec;

    iget-object v0, v0, Lcom/facebook/katana/MyTabHost$TabSpec;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 250
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/facebook/katana/MyTabHost;->playSoundEffect(I)V

    .line 251
    const/4 v0, 0x1

    .line 253
    :cond_0
    return v0
.end method

.method public dispatchWindowFocusChanged(Z)V
    .locals 1
    .parameter

    .prologue
    .line 260
    iget-object v0, p0, Lcom/facebook/katana/MyTabHost;->f:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchWindowFocusChanged(Z)V

    .line 261
    return-void
.end method

.method public getCurrentTab()I
    .locals 1

    .prologue
    .line 189
    iget v0, p0, Lcom/facebook/katana/MyTabHost;->e:I

    return v0
.end method

.method public getCurrentTabTag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 195
    iget v0, p0, Lcom/facebook/katana/MyTabHost;->e:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/facebook/katana/MyTabHost;->e:I

    iget-object v1, p0, Lcom/facebook/katana/MyTabHost;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 196
    iget-object v0, p0, Lcom/facebook/katana/MyTabHost;->d:Ljava/util/List;

    iget v1, p0, Lcom/facebook/katana/MyTabHost;->e:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/MyTabHost$TabSpec;

    iget-object v0, v0, Lcom/facebook/katana/MyTabHost$TabSpec;->a:Ljava/lang/String;

    .line 198
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentTabView()Landroid/view/View;
    .locals 2

    .prologue
    .line 204
    iget v0, p0, Lcom/facebook/katana/MyTabHost;->e:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/facebook/katana/MyTabHost;->e:I

    iget-object v1, p0, Lcom/facebook/katana/MyTabHost;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 205
    iget-object v0, p0, Lcom/facebook/katana/MyTabHost;->d:Ljava/util/List;

    iget v1, p0, Lcom/facebook/katana/MyTabHost;->e:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/MyTabHost$TabSpec;

    iget-object v0, v0, Lcom/facebook/katana/MyTabHost$TabSpec;->b:Landroid/view/View;

    .line 207
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/facebook/katana/MyTabHost;->f:Landroid/view/View;

    return-object v0
.end method

.method public getTabContentView()Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/facebook/katana/MyTabHost;->c:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public onTouchModeChanged(Z)V
    .locals 2
    .parameter

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/facebook/katana/MyTabHost;->i:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 135
    iget-object v0, p0, Lcom/facebook/katana/MyTabHost;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/katana/MyTabHost;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/MyTabHost;->d:Ljava/util/List;

    iget v1, p0, Lcom/facebook/katana/MyTabHost;->e:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/MyTabHost$TabSpec;

    iget-object v0, v0, Lcom/facebook/katana/MyTabHost$TabSpec;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 139
    :cond_1
    return-void
.end method

.method public setCurrentTab(I)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, -0x1

    .line 266
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/facebook/katana/MyTabHost;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 308
    :cond_0
    :goto_0
    return-void

    .line 270
    :cond_1
    iget v0, p0, Lcom/facebook/katana/MyTabHost;->e:I

    if-eq p1, v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/facebook/katana/MyTabHost;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/MyTabHost$TabSpec;

    iget-object v0, v0, Lcom/facebook/katana/MyTabHost$TabSpec;->b:Landroid/view/View;

    check-cast v0, Landroid/widget/RadioButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 277
    iget v0, p0, Lcom/facebook/katana/MyTabHost;->e:I

    if-eq v0, v3, :cond_2

    .line 278
    iget-object v0, p0, Lcom/facebook/katana/MyTabHost;->d:Ljava/util/List;

    iget v1, p0, Lcom/facebook/katana/MyTabHost;->e:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/MyTabHost$TabSpec;

    invoke-static {v0}, Lcom/facebook/katana/MyTabHost$TabSpec;->a(Lcom/facebook/katana/MyTabHost$TabSpec;)Lcom/facebook/katana/MyTabHost$ContentStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/katana/MyTabHost$ContentStrategy;->b()V

    .line 281
    :cond_2
    iput p1, p0, Lcom/facebook/katana/MyTabHost;->e:I

    .line 282
    iget-object v0, p0, Lcom/facebook/katana/MyTabHost;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/MyTabHost$TabSpec;

    .line 286
    iget-object v1, p0, Lcom/facebook/katana/MyTabHost;->d:Ljava/util/List;

    iget v2, p0, Lcom/facebook/katana/MyTabHost;->e:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/katana/MyTabHost$TabSpec;

    iget-object v1, v1, Lcom/facebook/katana/MyTabHost$TabSpec;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 289
    invoke-static {v0}, Lcom/facebook/katana/MyTabHost$TabSpec;->a(Lcom/facebook/katana/MyTabHost$TabSpec;)Lcom/facebook/katana/MyTabHost$ContentStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/katana/MyTabHost$ContentStrategy;->a()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/MyTabHost;->f:Landroid/view/View;

    .line 291
    iget-object v0, p0, Lcom/facebook/katana/MyTabHost;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_3

    .line 292
    iget-object v0, p0, Lcom/facebook/katana/MyTabHost;->c:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/facebook/katana/MyTabHost;->f:Landroid/view/View;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 300
    :cond_3
    iget-object v0, p0, Lcom/facebook/katana/MyTabHost;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_4

    .line 303
    iget-object v0, p0, Lcom/facebook/katana/MyTabHost;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 307
    :cond_4
    invoke-direct {p0}, Lcom/facebook/katana/MyTabHost;->a()V

    goto :goto_0
.end method

.method public setCurrentTabByTag(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 220
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/facebook/katana/MyTabHost;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/facebook/katana/MyTabHost;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/MyTabHost$TabSpec;

    iget-object v0, v0, Lcom/facebook/katana/MyTabHost$TabSpec;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 222
    invoke-virtual {p0, v1}, Lcom/facebook/katana/MyTabHost;->setCurrentTab(I)V

    .line 226
    :cond_0
    return-void

    .line 220
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public setOnTabChangedListener(Lcom/facebook/katana/MyTabHost$OnTabChangeListener;)V
    .locals 0
    .parameter

    .prologue
    .line 317
    iput-object p1, p0, Lcom/facebook/katana/MyTabHost;->g:Lcom/facebook/katana/MyTabHost$OnTabChangeListener;

    .line 318
    return-void
.end method

.method public setup()V
    .locals 2

    .prologue
    .line 86
    new-instance v0, Lcom/facebook/katana/MyTabHost$1;

    invoke-direct {v0, p0}, Lcom/facebook/katana/MyTabHost$1;-><init>(Lcom/facebook/katana/MyTabHost;)V

    iput-object v0, p0, Lcom/facebook/katana/MyTabHost;->h:Landroid/view/View$OnKeyListener;

    .line 104
    const v0, 0x1020011

    invoke-virtual {p0, v0}, Lcom/facebook/katana/MyTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/facebook/katana/MyTabHost;->c:Landroid/widget/FrameLayout;

    .line 105
    iget-object v0, p0, Lcom/facebook/katana/MyTabHost;->c:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    .line 106
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Your TabHost must have a FrameLayout whose id attribute is \'android.R.id.tabcontent\'"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_0
    const v0, 0x7f0802b6

    invoke-virtual {p0, v0}, Lcom/facebook/katana/MyTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/facebook/katana/MyTabHost;->b:Landroid/view/ViewGroup;

    .line 111
    return-void
.end method

.method public setup(Landroid/app/LocalActivityManager;)V
    .locals 0
    .parameter

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/facebook/katana/MyTabHost;->setup()V

    .line 123
    iput-object p1, p0, Lcom/facebook/katana/MyTabHost;->a:Landroid/app/LocalActivityManager;

    .line 124
    return-void
.end method
