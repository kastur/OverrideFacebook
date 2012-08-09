.class public Lcom/facebook/orca/users/UserKey;
.super Ljava/lang/Object;
.source "UserKey.java"


# annotations
.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# instance fields
.field private final a:Lcom/facebook/orca/users/User$Type;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/users/User$Type;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/facebook/orca/users/UserKey;->a:Lcom/facebook/orca/users/User$Type;

    .line 23
    iput-object p2, p0, Lcom/facebook/orca/users/UserKey;->b:Ljava/lang/String;

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/UserKey;->c:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/facebook/orca/users/UserKey;
    .locals 4
    .parameter

    .prologue
    .line 28
    if-nez p0, :cond_0

    .line 29
    const/4 v0, 0x0

    .line 36
    :goto_0
    return-object v0

    .line 31
    :cond_0
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 32
    array-length v0, v1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    .line 33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot parse user key: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_1
    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-static {v0}, Lcom/facebook/orca/users/User$Type;->valueOf(Ljava/lang/String;)Lcom/facebook/orca/users/User$Type;

    move-result-object v2

    .line 36
    new-instance v0, Lcom/facebook/orca/users/UserKey;

    const/4 v3, 0x1

    aget-object v1, v1, v3

    invoke-direct {v0, v2, v1}, Lcom/facebook/orca/users/UserKey;-><init>(Lcom/facebook/orca/users/User$Type;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/facebook/orca/users/UserKey;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    new-instance v0, Lcom/facebook/orca/users/UserKey$1;

    invoke-direct {v0}, Lcom/facebook/orca/users/UserKey$1;-><init>()V

    invoke-static {p0, v0}, Lcom/google/common/collect/Collections2;->a(Ljava/util/Collection;Lcom/google/common/base/Function;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/facebook/orca/users/UserKey;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    new-instance v0, Lcom/facebook/orca/users/UserKey$2;

    invoke-direct {v0}, Lcom/facebook/orca/users/UserKey$2;-><init>()V

    invoke-static {p0, v0}, Lcom/google/common/collect/Collections2;->a(Ljava/util/Collection;Lcom/google/common/base/Function;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/facebook/orca/users/User$Type;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/facebook/orca/users/UserKey;->a:Lcom/facebook/orca/users/User$Type;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/facebook/orca/users/UserKey;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/facebook/orca/users/UserKey;->c:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 53
    if-ne p0, p1, :cond_1

    .line 61
    :cond_0
    :goto_0
    return v0

    .line 54
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    .line 56
    :cond_3
    check-cast p1, Lcom/facebook/orca/users/UserKey;

    .line 58
    iget-object v2, p0, Lcom/facebook/orca/users/UserKey;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/facebook/orca/users/UserKey;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_0

    .line 59
    :cond_4
    iget-object v2, p0, Lcom/facebook/orca/users/UserKey;->a:Lcom/facebook/orca/users/User$Type;

    iget-object v3, p1, Lcom/facebook/orca/users/UserKey;->a:Lcom/facebook/orca/users/User$Type;

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/facebook/orca/users/UserKey;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 67
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/facebook/orca/users/UserKey;->a:Lcom/facebook/orca/users/User$Type;

    invoke-virtual {v1}, Lcom/facebook/orca/users/User$Type;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 68
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/facebook/orca/users/UserKey;->c:Ljava/lang/String;

    return-object v0
.end method
