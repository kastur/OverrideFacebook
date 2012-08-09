.class public Lcom/facebook/orca/prefs/PrefKey;
.super Lcom/facebook/orca/common/util/TypedKey;
.source "PrefKey.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/common/util/TypedKey",
        "<",
        "Lcom/facebook/orca/prefs/PrefKey;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/facebook/orca/common/util/TypedKey;-><init>(Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method private static c(Ljava/lang/String;)Lcom/facebook/orca/prefs/PrefKey;
    .locals 1
    .parameter

    .prologue
    .line 18
    new-instance v0, Lcom/facebook/orca/prefs/PrefKey;

    invoke-direct {v0, p0}, Lcom/facebook/orca/prefs/PrefKey;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method protected final synthetic a(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;
    .locals 1
    .parameter

    .prologue
    .line 10
    invoke-static {p1}, Lcom/facebook/orca/prefs/PrefKey;->c(Ljava/lang/String;)Lcom/facebook/orca/prefs/PrefKey;

    move-result-object v0

    return-object v0
.end method
