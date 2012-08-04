.class Lcom/facebook/katana/settings/RolloutSetting$ShortcutRolloutSetting;
.super Lcom/facebook/katana/settings/RolloutSetting;
.source "RolloutSetting.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/katana/settings/RolloutSetting",
        "<",
        "Lcom/facebook/katana/dialog/AddShortcutActivity$AndroidShortcutRollout2;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 93
    const-class v0, Lcom/facebook/katana/dialog/AddShortcutActivity$AndroidShortcutRollout2;

    invoke-direct {p0, v0}, Lcom/facebook/katana/settings/RolloutSetting;-><init>(Ljava/lang/Class;)V

    .line 94
    return-void
.end method

.method private static a(Lcom/facebook/katana/dialog/AddShortcutActivity$AndroidShortcutRollout2;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/facebook/katana/dialog/AddShortcutActivity$AndroidShortcutRollout2;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/facebook/katana/dialog/AddShortcutActivity$AndroidShortcutRollout2;->getDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final bridge synthetic a(Ljava/lang/Enum;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 91
    check-cast p1, Lcom/facebook/katana/dialog/AddShortcutActivity$AndroidShortcutRollout2;

    invoke-static {p1}, Lcom/facebook/katana/settings/RolloutSetting$ShortcutRolloutSetting;->a(Lcom/facebook/katana/dialog/AddShortcutActivity$AndroidShortcutRollout2;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final b(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 98
    invoke-static {p1}, Lcom/facebook/katana/dialog/AddShortcutActivity;->b(Landroid/content/Context;)V

    .line 99
    const-string v0, "Reset limits on how many and last time dialog was shown."

    invoke-static {p1, v0}, Lcom/facebook/katana/util/Toaster;->a(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 100
    return-void
.end method
