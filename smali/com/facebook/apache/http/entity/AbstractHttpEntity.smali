.class public abstract Lcom/facebook/apache/http/entity/AbstractHttpEntity;
.super Ljava/lang/Object;
.source "AbstractHttpEntity.java"

# interfaces
.implements Lcom/facebook/apache/http/HttpEntity;


# instance fields
.field private a:Lcom/facebook/apache/http/Header;

.field private b:Lcom/facebook/apache/http/Header;

.field private c:Z


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/apache/http/Header;)V
    .locals 0
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/facebook/apache/http/entity/AbstractHttpEntity;->a:Lcom/facebook/apache/http/Header;

    .line 106
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 117
    const/4 v0, 0x0

    .line 118
    if-eqz p1, :cond_0

    .line 119
    new-instance v0, Lcom/facebook/apache/http/message/BasicHeader;

    const-string v1, "Content-Type"

    invoke-direct {v0, v1, p1}, Lcom/facebook/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    :cond_0
    invoke-virtual {p0, v0}, Lcom/facebook/apache/http/entity/AbstractHttpEntity;->a(Lcom/facebook/apache/http/Header;)V

    .line 122
    return-void
.end method

.method public final a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 169
    iput-boolean p1, p0, Lcom/facebook/apache/http/entity/AbstractHttpEntity;->c:Z

    .line 170
    return-void
.end method

.method public final b(Lcom/facebook/apache/http/Header;)V
    .locals 0
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Lcom/facebook/apache/http/entity/AbstractHttpEntity;->b:Lcom/facebook/apache/http/Header;

    .line 135
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/facebook/apache/http/entity/AbstractHttpEntity;->c:Z

    return v0
.end method

.method public final d()Lcom/facebook/apache/http/Header;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/facebook/apache/http/entity/AbstractHttpEntity;->a:Lcom/facebook/apache/http/Header;

    return-object v0
.end method

.method public final e()Lcom/facebook/apache/http/Header;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/facebook/apache/http/entity/AbstractHttpEntity;->b:Lcom/facebook/apache/http/Header;

    return-object v0
.end method

.method public h()V
    .locals 0

    .prologue
    .line 180
    return-void
.end method
