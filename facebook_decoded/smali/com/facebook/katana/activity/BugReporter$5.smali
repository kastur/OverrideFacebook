.class Lcom/facebook/katana/activity/BugReporter$5;
.super Ljava/lang/Object;
.source "BugReporter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/BugReporter;


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/BugReporter;)V
    .locals 0
    .parameter

    .prologue
    .line 163
    iput-object p1, p0, Lcom/facebook/katana/activity/BugReporter$5;->a:Lcom/facebook/katana/activity/BugReporter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 166
    iget-object v0, p0, Lcom/facebook/katana/activity/BugReporter$5;->a:Lcom/facebook/katana/activity/BugReporter;

    invoke-virtual {v0, p1}, Lcom/facebook/katana/activity/BugReporter;->onSend(Landroid/view/View;)V

    .line 167
    return-void
.end method
