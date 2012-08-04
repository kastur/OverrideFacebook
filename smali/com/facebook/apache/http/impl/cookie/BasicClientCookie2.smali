.class public Lcom/facebook/apache/http/impl/cookie/BasicClientCookie2;
.super Lcom/facebook/apache/http/impl/cookie/BasicClientCookie;
.source "BasicClientCookie2.java"

# interfaces
.implements Lcom/facebook/apache/http/cookie/SetCookie2;
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/facebook/apache/http/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private a:[I

.field private b:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/facebook/apache/http/impl/cookie/BasicClientCookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    return-void
.end method


# virtual methods
.method public final a([I)V
    .locals 0
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/facebook/apache/http/impl/cookie/BasicClientCookie2;->a:[I

    .line 68
    return-void
.end method

.method public final a(Ljava/util/Date;)Z
    .locals 1
    .parameter

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/facebook/apache/http/impl/cookie/BasicClientCookie2;->b:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/facebook/apache/http/impl/cookie/BasicClientCookie;->a(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a_(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 76
    return-void
.end method

.method public final b(Z)V
    .locals 1
    .parameter

    .prologue
    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/apache/http/impl/cookie/BasicClientCookie2;->b:Z

    .line 81
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 95
    invoke-super {p0}, Lcom/facebook/apache/http/impl/cookie/BasicClientCookie;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/apache/http/impl/cookie/BasicClientCookie2;

    .line 96
    iget-object v1, p0, Lcom/facebook/apache/http/impl/cookie/BasicClientCookie2;->a:[I

    if-eqz v1, :cond_0

    .line 97
    iget-object v1, p0, Lcom/facebook/apache/http/impl/cookie/BasicClientCookie2;->a:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Lcom/facebook/apache/http/impl/cookie/BasicClientCookie2;->a:[I

    .line 99
    :cond_0
    return-object v0
.end method

.method public final f()[I
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/facebook/apache/http/impl/cookie/BasicClientCookie2;->a:[I

    return-object v0
.end method
