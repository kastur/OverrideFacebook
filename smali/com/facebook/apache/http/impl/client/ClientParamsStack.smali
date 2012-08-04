.class public Lcom/facebook/apache/http/impl/client/ClientParamsStack;
.super Lcom/facebook/apache/http/params/AbstractHttpParams;
.source "ClientParamsStack.java"


# annotations
.annotation build Lcom/facebook/apache/http/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private a:Lcom/facebook/apache/http/params/HttpParams;

.field private b:Lcom/facebook/apache/http/params/HttpParams;

.field private c:Lcom/facebook/apache/http/params/HttpParams;

.field private d:Lcom/facebook/apache/http/params/HttpParams;


# direct methods
.method public constructor <init>(Lcom/facebook/apache/http/params/HttpParams;Lcom/facebook/apache/http/params/HttpParams;Lcom/facebook/apache/http/params/HttpParams;Lcom/facebook/apache/http/params/HttpParams;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 98
    invoke-direct {p0}, Lcom/facebook/apache/http/params/AbstractHttpParams;-><init>()V

    .line 99
    iput-object v0, p0, Lcom/facebook/apache/http/impl/client/ClientParamsStack;->a:Lcom/facebook/apache/http/params/HttpParams;

    .line 100
    iput-object p2, p0, Lcom/facebook/apache/http/impl/client/ClientParamsStack;->b:Lcom/facebook/apache/http/params/HttpParams;

    .line 101
    iput-object p3, p0, Lcom/facebook/apache/http/impl/client/ClientParamsStack;->c:Lcom/facebook/apache/http/params/HttpParams;

    .line 102
    iput-object v0, p0, Lcom/facebook/apache/http/impl/client/ClientParamsStack;->d:Lcom/facebook/apache/http/params/HttpParams;

    .line 103
    return-void
.end method


# virtual methods
.method public final a()Lcom/facebook/apache/http/params/HttpParams;
    .locals 0

    .prologue
    .line 266
    return-object p0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/apache/http/params/HttpParams;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 229
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Setting parameters in a stack is not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .parameter

    .prologue
    .line 191
    if-nez p1, :cond_0

    .line 192
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameter name must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 196
    :cond_0
    const/4 v0, 0x0

    .line 198
    iget-object v1, p0, Lcom/facebook/apache/http/impl/client/ClientParamsStack;->d:Lcom/facebook/apache/http/params/HttpParams;

    if-eqz v1, :cond_1

    .line 199
    iget-object v0, p0, Lcom/facebook/apache/http/impl/client/ClientParamsStack;->d:Lcom/facebook/apache/http/params/HttpParams;

    invoke-interface {v0, p1}, Lcom/facebook/apache/http/params/HttpParams;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 201
    :cond_1
    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/facebook/apache/http/impl/client/ClientParamsStack;->c:Lcom/facebook/apache/http/params/HttpParams;

    if-eqz v1, :cond_2

    .line 202
    iget-object v0, p0, Lcom/facebook/apache/http/impl/client/ClientParamsStack;->c:Lcom/facebook/apache/http/params/HttpParams;

    invoke-interface {v0, p1}, Lcom/facebook/apache/http/params/HttpParams;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 204
    :cond_2
    if-nez v0, :cond_3

    iget-object v1, p0, Lcom/facebook/apache/http/impl/client/ClientParamsStack;->b:Lcom/facebook/apache/http/params/HttpParams;

    if-eqz v1, :cond_3

    .line 205
    iget-object v0, p0, Lcom/facebook/apache/http/impl/client/ClientParamsStack;->b:Lcom/facebook/apache/http/params/HttpParams;

    invoke-interface {v0, p1}, Lcom/facebook/apache/http/params/HttpParams;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 207
    :cond_3
    if-nez v0, :cond_4

    iget-object v1, p0, Lcom/facebook/apache/http/impl/client/ClientParamsStack;->a:Lcom/facebook/apache/http/params/HttpParams;

    if-eqz v1, :cond_4

    .line 208
    iget-object v0, p0, Lcom/facebook/apache/http/impl/client/ClientParamsStack;->a:Lcom/facebook/apache/http/params/HttpParams;

    invoke-interface {v0, p1}, Lcom/facebook/apache/http/params/HttpParams;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 210
    :cond_4
    return-object v0
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 2
    .parameter

    .prologue
    .line 247
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Removing parameters in a stack is not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
