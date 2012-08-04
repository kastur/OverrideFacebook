.class Lcom/facebook/katana/activity/BugReporter$3;
.super Ljava/lang/Object;
.source "BugReporter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/BugReporter;


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/BugReporter;)V
    .locals 0
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/facebook/katana/activity/BugReporter$3;->a:Lcom/facebook/katana/activity/BugReporter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 83
    iget-object v0, p0, Lcom/facebook/katana/activity/BugReporter$3;->a:Lcom/facebook/katana/activity/BugReporter;

    invoke-static {v0}, Lcom/facebook/katana/activity/BugReporter;->a(Lcom/facebook/katana/activity/BugReporter;)V

    .line 84
    iget-object v0, p0, Lcom/facebook/katana/activity/BugReporter$3;->a:Lcom/facebook/katana/activity/BugReporter;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/BugReporter;->finish()V

    .line 85
    return-void
.end method
