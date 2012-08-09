.class final Lcom/facebook/katana/settings/RolloutSetting$1;
.super Ljava/util/HashSet;
.source "RolloutSetting.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashSet",
        "<",
        "Lcom/facebook/katana/settings/RolloutSetting",
        "<*>;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 28
    new-instance v0, Lcom/facebook/katana/settings/RolloutSetting$ShortcutRolloutSetting;

    invoke-direct {v0}, Lcom/facebook/katana/settings/RolloutSetting$ShortcutRolloutSetting;-><init>()V

    invoke-virtual {p0, v0}, Lcom/facebook/katana/settings/RolloutSetting$1;->add(Ljava/lang/Object;)Z

    .line 29
    return-void
.end method
