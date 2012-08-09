.class Lcom/facebook/katana/WidgetActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "WidgetActivity.java"


# instance fields
.field private synthetic a:Lcom/facebook/katana/WidgetActivity;


# direct methods
.method constructor <init>(Lcom/facebook/katana/WidgetActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/facebook/katana/WidgetActivity$1;->a:Lcom/facebook/katana/WidgetActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/facebook/katana/WidgetActivity$1;->a:Lcom/facebook/katana/WidgetActivity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/facebook/katana/WidgetActivity;->removeDialog(I)V

    .line 66
    const-string v0, "extra_error_code"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 67
    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 68
    const v0, 0x7f0b03d6

    invoke-static {p1, v0}, Lcom/facebook/katana/util/Toaster;->a(Landroid/content/Context;I)V

    .line 69
    iget-object v0, p0, Lcom/facebook/katana/WidgetActivity$1;->a:Lcom/facebook/katana/WidgetActivity;

    invoke-virtual {v0}, Lcom/facebook/katana/WidgetActivity;->finish()V

    .line 74
    :goto_0
    return-void

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/WidgetActivity$1;->a:Lcom/facebook/katana/WidgetActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/katana/WidgetActivity;->showDialog(I)V

    .line 72
    const v0, 0x7f0b0359

    invoke-static {p1, v0}, Lcom/facebook/katana/util/Toaster;->a(Landroid/content/Context;I)V

    goto :goto_0
.end method
