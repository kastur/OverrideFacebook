.class Lcom/facebook/katana/activity/FacebookActivityDelegate$12;
.super Ljava/lang/Object;
.source "FacebookActivityDelegate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/FacebookActivityDelegate;


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/FacebookActivityDelegate;)V
    .locals 0
    .parameter

    .prologue
    .line 1426
    iput-object p1, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate$12;->a:Lcom/facebook/katana/activity/FacebookActivityDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 1429
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate$12;->a:Lcom/facebook/katana/activity/FacebookActivityDelegate;

    invoke-static {v0}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->n(Lcom/facebook/katana/activity/FacebookActivityDelegate;)Lcom/facebook/katana/activity/BookmarksAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/katana/activity/BookmarksAdapter;->d()V

    .line 1430
    return-void
.end method
