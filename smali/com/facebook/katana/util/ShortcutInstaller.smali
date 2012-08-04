.class public Lcom/facebook/katana/util/ShortcutInstaller;
.super Ljava/lang/Object;
.source "ShortcutInstaller.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/facebook/katana/util/ShortcutInstaller$Shortcut;)Landroid/content/Intent;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 21
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {p1, p0}, Lcom/facebook/katana/util/ShortcutInstaller$Shortcut;->getShortcutIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p1}, Lcom/facebook/katana/util/ShortcutInstaller$Shortcut;->getShortcutLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "duplicate"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 25
    invoke-static {}, Lcom/facebook/katana/Constants;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 26
    const-string v1, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {p1}, Lcom/facebook/katana/util/ShortcutInstaller$Shortcut;->getBetaShortcutIcon()I

    move-result v2

    invoke-static {p0, v2}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 34
    :goto_0
    return-object v0

    .line 30
    :cond_0
    const-string v1, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {p1}, Lcom/facebook/katana/util/ShortcutInstaller$Shortcut;->getShortcutIcon()I

    move-result v2

    invoke-static {p0, v2}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0
.end method
