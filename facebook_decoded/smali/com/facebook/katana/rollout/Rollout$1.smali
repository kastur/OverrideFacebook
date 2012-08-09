.class final Lcom/facebook/katana/rollout/Rollout$1;
.super Ljava/util/HashMap;
.source "Rollout.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/Class",
        "<+",
        "Ljava/lang/Enum",
        "<*>;>;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 57
    const-class v0, Lcom/facebook/katana/dialog/AddShortcutActivity$AndroidShortcutRollout2;

    const-string v1, "AndroidShortcutRollout2"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/katana/rollout/Rollout$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    return-void
.end method
