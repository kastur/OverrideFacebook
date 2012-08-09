.class Lcom/facebook/orca/intents/ShareLauncherActivity$1;
.super Lcom/facebook/orca/threadlist/ThreadChooserDialog$OnDialogFinishedListener;
.source "ShareLauncherActivity.java"


# instance fields
.field private synthetic a:Lcom/facebook/orca/intents/ShareLauncherActivity;


# direct methods
.method constructor <init>(Lcom/facebook/orca/intents/ShareLauncherActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/facebook/orca/intents/ShareLauncherActivity$1;->a:Lcom/facebook/orca/intents/ShareLauncherActivity;

    invoke-direct {p0}, Lcom/facebook/orca/threadlist/ThreadChooserDialog$OnDialogFinishedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/facebook/orca/intents/ShareLauncherActivity$1;->a:Lcom/facebook/orca/intents/ShareLauncherActivity;

    invoke-static {v0, p1}, Lcom/facebook/orca/intents/ShareLauncherActivity;->a(Lcom/facebook/orca/intents/ShareLauncherActivity;Ljava/lang/String;)V

    .line 47
    return-void
.end method
