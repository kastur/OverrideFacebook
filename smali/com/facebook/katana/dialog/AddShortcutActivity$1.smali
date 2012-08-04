.class Lcom/facebook/katana/dialog/AddShortcutActivity$1;
.super Ljava/lang/Object;
.source "AddShortcutActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/facebook/katana/dialog/AddShortcutActivity;


# direct methods
.method constructor <init>(Lcom/facebook/katana/dialog/AddShortcutActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 177
    iput-object p1, p0, Lcom/facebook/katana/dialog/AddShortcutActivity$1;->a:Lcom/facebook/katana/dialog/AddShortcutActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 180
    iget-object v0, p0, Lcom/facebook/katana/dialog/AddShortcutActivity$1;->a:Lcom/facebook/katana/dialog/AddShortcutActivity;

    iget-object v1, p0, Lcom/facebook/katana/dialog/AddShortcutActivity$1;->a:Lcom/facebook/katana/dialog/AddShortcutActivity;

    invoke-virtual {v1}, Lcom/facebook/katana/dialog/AddShortcutActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/facebook/katana/util/ShortcutInstaller$Shortcut;->MESSENGER_SHORTCUT:Lcom/facebook/katana/util/ShortcutInstaller$Shortcut;

    invoke-static {v1, v2}, Lcom/facebook/katana/util/ShortcutInstaller;->a(Landroid/content/Context;Lcom/facebook/katana/util/ShortcutInstaller$Shortcut;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/katana/dialog/AddShortcutActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 182
    return-void
.end method
