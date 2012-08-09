.class Lcom/facebook/katana/activity/BugReporter$4;
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
    .line 155
    iput-object p1, p0, Lcom/facebook/katana/activity/BugReporter$4;->a:Lcom/facebook/katana/activity/BugReporter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 158
    iget-object v0, p0, Lcom/facebook/katana/activity/BugReporter$4;->a:Lcom/facebook/katana/activity/BugReporter;

    const v1, 0x7f0b01aa

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Toaster;->a(Landroid/content/Context;I)V

    .line 159
    iget-object v0, p0, Lcom/facebook/katana/activity/BugReporter$4;->a:Lcom/facebook/katana/activity/BugReporter;

    invoke-static {v0}, Lcom/facebook/katana/activity/BugReporter;->a(Lcom/facebook/katana/activity/BugReporter;)V

    .line 160
    iget-object v0, p0, Lcom/facebook/katana/activity/BugReporter$4;->a:Lcom/facebook/katana/activity/BugReporter;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/BugReporter;->finish()V

    .line 161
    return-void
.end method
