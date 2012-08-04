.class public Lcom/facebook/katana/activity/media/FocusIndicatorView;
.super Landroid/view/View;
.source "FocusIndicatorView.java"

# interfaces
.implements Lcom/facebook/katana/activity/media/FocusIndicator;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    iput-object p1, p0, Lcom/facebook/katana/activity/media/FocusIndicatorView;->a:Landroid/content/Context;

    .line 38
    return-void
.end method

.method private a(I)V
    .locals 2
    .parameter

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/FocusIndicatorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020058

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/FocusIndicatorView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 48
    return-void
.end method

.method private a(Landroid/view/View;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/facebook/katana/activity/media/FocusIndicatorView;->a:Landroid/content/Context;

    const v1, 0x7f040002

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 43
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 52
    const v0, 0x7f020058

    invoke-direct {p0, v0}, Lcom/facebook/katana/activity/media/FocusIndicatorView;->a(I)V

    .line 53
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/FocusIndicatorView;->setVisibility(I)V

    .line 56
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 60
    const v0, 0x7f040002

    invoke-direct {p0, p0, v0}, Lcom/facebook/katana/activity/media/FocusIndicatorView;->a(Landroid/view/View;I)V

    .line 61
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/FocusIndicatorView;->setVisibility(I)V

    .line 62
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/FocusIndicatorView;->setVisibility(I)V

    .line 67
    return-void
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/FocusIndicatorView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 72
    return-void
.end method
