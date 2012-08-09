.class Lcom/facebook/katana/activity/BugReporter$2;
.super Ljava/lang/Object;
.source "BugReporter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/BugReporter;)V
    .locals 0
    .parameter

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 91
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 92
    return-void
.end method
