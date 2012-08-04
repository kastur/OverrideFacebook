.class final Lcom/facebook/orca/users/UserKey$2;
.super Ljava/lang/Object;
.source "UserKey.java"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function",
        "<",
        "Lcom/facebook/orca/users/UserKey;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/facebook/orca/users/UserKey;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/facebook/orca/users/UserKey;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 105
    check-cast p1, Lcom/facebook/orca/users/UserKey;

    invoke-static {p1}, Lcom/facebook/orca/users/UserKey$2;->a(Lcom/facebook/orca/users/UserKey;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
