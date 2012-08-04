.class Lcom/facebook/orca/common/http/HttpParamsConverter;
.super Ljava/lang/Object;
.source "HttpParamsConverter.java"

# interfaces
.implements Lorg/apache/http/params/HttpParams;


# instance fields
.field private final a:Lcom/facebook/apache/http/params/HttpParams;


# direct methods
.method constructor <init>(Lcom/facebook/apache/http/params/HttpParams;)V
    .locals 0
    .parameter

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/facebook/orca/common/http/HttpParamsConverter;->a:Lcom/facebook/apache/http/params/HttpParams;

    .line 16
    return-void
.end method


# virtual methods
.method public copy()Lorg/apache/http/params/HttpParams;
    .locals 2

    .prologue
    .line 31
    new-instance v0, Lcom/facebook/orca/common/http/HttpParamsConverter;

    iget-object v1, p0, Lcom/facebook/orca/common/http/HttpParamsConverter;->a:Lcom/facebook/apache/http/params/HttpParams;

    invoke-interface {v1}, Lcom/facebook/apache/http/params/HttpParams;->a()Lcom/facebook/apache/http/params/HttpParams;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/orca/common/http/HttpParamsConverter;-><init>(Lcom/facebook/apache/http/params/HttpParams;)V

    return-object v0
.end method

.method public getBooleanParameter(Ljava/lang/String;Z)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/facebook/orca/common/http/HttpParamsConverter;->a:Lcom/facebook/apache/http/params/HttpParams;

    invoke-interface {v0, p1, p2}, Lcom/facebook/apache/http/params/HttpParams;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getDoubleParameter(Ljava/lang/String;D)D
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/facebook/orca/common/http/HttpParamsConverter;->a:Lcom/facebook/apache/http/params/HttpParams;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/apache/http/params/HttpParams;->a(Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getIntParameter(Ljava/lang/String;I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/facebook/orca/common/http/HttpParamsConverter;->a:Lcom/facebook/apache/http/params/HttpParams;

    invoke-interface {v0, p1, p2}, Lcom/facebook/apache/http/params/HttpParams;->a(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getLongParameter(Ljava/lang/String;J)J
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/facebook/orca/common/http/HttpParamsConverter;->a:Lcom/facebook/apache/http/params/HttpParams;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/apache/http/params/HttpParams;->a(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/facebook/orca/common/http/HttpParamsConverter;->a:Lcom/facebook/apache/http/params/HttpParams;

    invoke-interface {v0, p1}, Lcom/facebook/apache/http/params/HttpParams;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isParameterFalse(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Lcom/facebook/orca/common/http/HttpParamsConverter;->a:Lcom/facebook/apache/http/params/HttpParams;

    invoke-interface {v0, p1}, Lcom/facebook/apache/http/params/HttpParams;->d(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isParameterTrue(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lcom/facebook/orca/common/http/HttpParamsConverter;->a:Lcom/facebook/apache/http/params/HttpParams;

    invoke-interface {v0, p1}, Lcom/facebook/apache/http/params/HttpParams;->c(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public removeParameter(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/facebook/orca/common/http/HttpParamsConverter;->a:Lcom/facebook/apache/http/params/HttpParams;

    invoke-interface {v0, p1}, Lcom/facebook/apache/http/params/HttpParams;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setBooleanParameter(Ljava/lang/String;Z)Lorg/apache/http/params/HttpParams;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/facebook/orca/common/http/HttpParamsConverter;->a:Lcom/facebook/apache/http/params/HttpParams;

    invoke-interface {v0, p1, p2}, Lcom/facebook/apache/http/params/HttpParams;->b(Ljava/lang/String;Z)Lcom/facebook/apache/http/params/HttpParams;

    .line 80
    return-object p0
.end method

.method public setDoubleParameter(Ljava/lang/String;D)Lorg/apache/http/params/HttpParams;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/facebook/orca/common/http/HttpParamsConverter;->a:Lcom/facebook/apache/http/params/HttpParams;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/apache/http/params/HttpParams;->b(Ljava/lang/String;D)Lcom/facebook/apache/http/params/HttpParams;

    .line 69
    return-object p0
.end method

.method public setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/facebook/orca/common/http/HttpParamsConverter;->a:Lcom/facebook/apache/http/params/HttpParams;

    invoke-interface {v0, p1, p2}, Lcom/facebook/apache/http/params/HttpParams;->b(Ljava/lang/String;I)Lcom/facebook/apache/http/params/HttpParams;

    .line 58
    return-object p0
.end method

.method public setLongParameter(Ljava/lang/String;J)Lorg/apache/http/params/HttpParams;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/facebook/orca/common/http/HttpParamsConverter;->a:Lcom/facebook/apache/http/params/HttpParams;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/apache/http/params/HttpParams;->b(Ljava/lang/String;J)Lcom/facebook/apache/http/params/HttpParams;

    .line 47
    return-object p0
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/facebook/orca/common/http/HttpParamsConverter;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 26
    return-object p0
.end method
