.class Lcom/facebook/katana/activity/FacebookActivityDelegate$17$1;
.super Ljava/lang/Object;
.source "FacebookActivityDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Landroid/graphics/drawable/TransitionDrawable;


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/FacebookActivityDelegate$17;Landroid/graphics/drawable/TransitionDrawable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2006
    iput-object p2, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate$17$1;->a:Landroid/graphics/drawable/TransitionDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2009
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate$17$1;->a:Landroid/graphics/drawable/TransitionDrawable;

    sget v1, Lcom/facebook/katana/activity/BookmarksAdapter;->b:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->reverseTransition(I)V

    .line 2011
    return-void
.end method
