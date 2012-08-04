.class public Lcom/facebook/katana/ui/FbandroidTitleBar;
.super Lcom/facebook/katana/ui/CustomRelativeLayout;
.source "FbandroidTitleBar.java"

# interfaces
.implements Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;


# instance fields
.field private a:Lcom/facebook/katana/activity/FacebookActivityDelegate;

.field private b:Landroid/app/Activity;

.field private c:Landroid/view/View$OnClickListener;

.field private d:Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpec;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/facebook/katana/ui/CustomRelativeLayout;-><init>(Landroid/content/Context;)V

    .line 25
    invoke-direct {p0, p1}, Lcom/facebook/katana/ui/FbandroidTitleBar;->a(Landroid/content/Context;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/facebook/katana/ui/CustomRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    invoke-direct {p0, p1}, Lcom/facebook/katana/ui/FbandroidTitleBar;->a(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method static synthetic a(Lcom/facebook/katana/ui/FbandroidTitleBar;)Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpec;
    .locals 1
    .parameter

    .prologue
    .line 16
    iget-object v0, p0, Lcom/facebook/katana/ui/FbandroidTitleBar;->d:Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpec;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 36
    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/facebook/katana/ui/FbandroidTitleBar;->b:Landroid/app/Activity;

    .line 37
    new-instance v0, Lcom/facebook/katana/activity/FacebookActivityDelegate;

    iget-object v1, p0, Lcom/facebook/katana/ui/FbandroidTitleBar;->b:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/facebook/katana/activity/FacebookActivityDelegate;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/facebook/katana/ui/FbandroidTitleBar;->a:Lcom/facebook/katana/activity/FacebookActivityDelegate;

    .line 38
    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 98
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public final b(Z)V
    .locals 0
    .parameter

    .prologue
    .line 115
    return-void
.end method

.method public setButtonSpecs(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpec;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpec;

    iput-object v0, p0, Lcom/facebook/katana/ui/FbandroidTitleBar;->d:Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpec;

    .line 59
    iget-object v0, p0, Lcom/facebook/katana/ui/FbandroidTitleBar;->a:Lcom/facebook/katana/activity/FacebookActivityDelegate;

    iget-object v1, p0, Lcom/facebook/katana/ui/FbandroidTitleBar;->d:Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpec;

    invoke-virtual {v1}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpec;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->a(Landroid/graphics/drawable/Drawable;)V

    .line 60
    return-void
.end method

.method public setCustomTitleView(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    return-void
.end method

.method public setDefaultPrimaryOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/facebook/katana/ui/FbandroidTitleBar;->c:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 88
    :goto_0
    return-void

    .line 86
    :cond_0
    iput-object p1, p0, Lcom/facebook/katana/ui/FbandroidTitleBar;->c:Landroid/view/View$OnClickListener;

    .line 87
    iget-object v0, p0, Lcom/facebook/katana/ui/FbandroidTitleBar;->a:Lcom/facebook/katana/activity/FacebookActivityDelegate;

    iget-object v1, p0, Lcom/facebook/katana/ui/FbandroidTitleBar;->c:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->a(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public setHasProgressBar(Z)V
    .locals 0
    .parameter

    .prologue
    .line 53
    return-void
.end method

.method public setOnToolbarButtonListener(Lcom/facebook/orca/common/ui/titlebar/TitleBar$OnToolbarButtonListener;)V
    .locals 2
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/facebook/katana/ui/FbandroidTitleBar;->d:Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpec;

    if-nez v0, :cond_0

    .line 78
    :goto_0
    return-void

    .line 70
    :cond_0
    new-instance v0, Lcom/facebook/katana/ui/FbandroidTitleBar$1;

    invoke-direct {v0, p0, p1}, Lcom/facebook/katana/ui/FbandroidTitleBar$1;-><init>(Lcom/facebook/katana/ui/FbandroidTitleBar;Lcom/facebook/orca/common/ui/titlebar/TitleBar$OnToolbarButtonListener;)V

    iput-object v0, p0, Lcom/facebook/katana/ui/FbandroidTitleBar;->c:Landroid/view/View$OnClickListener;

    .line 77
    iget-object v0, p0, Lcom/facebook/katana/ui/FbandroidTitleBar;->a:Lcom/facebook/katana/activity/FacebookActivityDelegate;

    iget-object v1, p0, Lcom/facebook/katana/ui/FbandroidTitleBar;->c:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->a(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public setQuickActionMenuListener(Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu$OnQuickActionListener;)V
    .locals 0
    .parameter

    .prologue
    .line 110
    return-void
.end method

.method public setTitle(I)V
    .locals 0
    .parameter

    .prologue
    .line 48
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    return-void
.end method
