.class final Lcom/facebook/katana/UserInfoAdapter$1;
.super Ljava/util/HashMap;
.source "UserInfoAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "[I>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 230
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/Object;)[I
    .locals 1
    .parameter

    .prologue
    .line 243
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method private a(Ljava/lang/String;[I)[I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 238
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method


# virtual methods
.method public final synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 230
    invoke-direct {p0, p1}, Lcom/facebook/katana/UserInfoAdapter$1;->a(Ljava/lang/Object;)[I

    move-result-object v0

    return-object v0
.end method

.method public final synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 230
    check-cast p1, Ljava/lang/String;

    check-cast p2, [I

    invoke-direct {p0, p1, p2}, Lcom/facebook/katana/UserInfoAdapter$1;->a(Ljava/lang/String;[I)[I

    move-result-object v0

    return-object v0
.end method
