.class public final Lcom/facebook/apache/http/params/DefaultedHttpParams;
.super Lcom/facebook/apache/http/params/AbstractHttpParams;
.source "DefaultedHttpParams.java"


# instance fields
.field private final a:Lcom/facebook/apache/http/params/HttpParams;

.field private final b:Lcom/facebook/apache/http/params/HttpParams;


# direct methods
.method private constructor <init>(Lcom/facebook/apache/http/params/HttpParams;Lcom/facebook/apache/http/params/HttpParams;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/facebook/apache/http/params/AbstractHttpParams;-><init>()V

    .line 51
    if-nez p1, :cond_0

    .line 52
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_0
    iput-object p1, p0, Lcom/facebook/apache/http/params/DefaultedHttpParams;->a:Lcom/facebook/apache/http/params/HttpParams;

    .line 55
    iput-object p2, p0, Lcom/facebook/apache/http/params/DefaultedHttpParams;->b:Lcom/facebook/apache/http/params/HttpParams;

    .line 56
    return-void
.end method


# virtual methods
.method public final a()Lcom/facebook/apache/http/params/HttpParams;
    .locals 3

    .prologue
    .line 64
    iget-object v0, p0, Lcom/facebook/apache/http/params/DefaultedHttpParams;->a:Lcom/facebook/apache/http/params/HttpParams;

    invoke-interface {v0}, Lcom/facebook/apache/http/params/HttpParams;->a()Lcom/facebook/apache/http/params/HttpParams;

    move-result-object v0

    .line 65
    new-instance v1, Lcom/facebook/apache/http/params/DefaultedHttpParams;

    iget-object v2, p0, Lcom/facebook/apache/http/params/DefaultedHttpParams;->b:Lcom/facebook/apache/http/params/HttpParams;

    invoke-direct {v1, v0, v2}, Lcom/facebook/apache/http/params/DefaultedHttpParams;-><init>(Lcom/facebook/apache/http/params/HttpParams;Lcom/facebook/apache/http/params/HttpParams;)V

    return-object v1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/apache/http/params/HttpParams;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 94
    iget-object v0, p0, Lcom/facebook/apache/http/params/DefaultedHttpParams;->a:Lcom/facebook/apache/http/params/HttpParams;

    invoke-interface {v0, p1, p2}, Lcom/facebook/apache/http/params/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/apache/http/params/HttpParams;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/facebook/apache/http/params/DefaultedHttpParams;->a:Lcom/facebook/apache/http/params/HttpParams;

    invoke-interface {v0, p1}, Lcom/facebook/apache/http/params/HttpParams;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 75
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/facebook/apache/http/params/DefaultedHttpParams;->b:Lcom/facebook/apache/http/params/HttpParams;

    if-eqz v1, :cond_0

    .line 76
    iget-object v0, p0, Lcom/facebook/apache/http/params/DefaultedHttpParams;->b:Lcom/facebook/apache/http/params/HttpParams;

    invoke-interface {v0, p1}, Lcom/facebook/apache/http/params/HttpParams;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 78
    :cond_0
    return-object v0
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lcom/facebook/apache/http/params/DefaultedHttpParams;->a:Lcom/facebook/apache/http/params/HttpParams;

    invoke-interface {v0, p1}, Lcom/facebook/apache/http/params/HttpParams;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
