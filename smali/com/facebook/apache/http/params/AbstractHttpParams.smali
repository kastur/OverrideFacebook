.class public abstract Lcom/facebook/apache/http/params/AbstractHttpParams;
.super Ljava/lang/Object;
.source "AbstractHttpParams.java"

# interfaces
.implements Lcom/facebook/apache/http/params/HttpParams;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;D)D
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 75
    invoke-virtual {p0, p1}, Lcom/facebook/apache/http/params/AbstractHttpParams;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 76
    if-nez v0, :cond_0

    .line 79
    :goto_0
    return-wide p2

    :cond_0
    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p2

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Lcom/facebook/apache/http/params/AbstractHttpParams;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 63
    if-nez v0, :cond_0

    .line 66
    :goto_0
    return p2

    :cond_0
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;J)J
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/facebook/apache/http/params/AbstractHttpParams;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 50
    if-nez v0, :cond_0

    .line 53
    :goto_0
    return-wide p2

    :cond_0
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Z)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 88
    invoke-virtual {p0, p1}, Lcom/facebook/apache/http/params/AbstractHttpParams;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 89
    if-nez v0, :cond_0

    .line 92
    :goto_0
    return p2

    :cond_0
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;D)Lcom/facebook/apache/http/params/HttpParams;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 83
    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, p2, p3}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {p0, p1, v0}, Lcom/facebook/apache/http/params/AbstractHttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/apache/http/params/HttpParams;

    .line 84
    return-object p0
.end method

.method public final b(Ljava/lang/String;I)Lcom/facebook/apache/http/params/HttpParams;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 70
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Lcom/facebook/apache/http/params/AbstractHttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/apache/http/params/HttpParams;

    .line 71
    return-object p0
.end method

.method public final b(Ljava/lang/String;J)Lcom/facebook/apache/http/params/HttpParams;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 57
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p2, p3}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {p0, p1, v0}, Lcom/facebook/apache/http/params/AbstractHttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/apache/http/params/HttpParams;

    .line 58
    return-object p0
.end method

.method public final b(Ljava/lang/String;Z)Lcom/facebook/apache/http/params/HttpParams;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 96
    if-eqz p2, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/facebook/apache/http/params/AbstractHttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/apache/http/params/HttpParams;

    .line 97
    return-object p0

    .line 96
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 101
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/apache/http/params/AbstractHttpParams;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final d(Ljava/lang/String;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 105
    invoke-virtual {p0, p1, v0}, Lcom/facebook/apache/http/params/AbstractHttpParams;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
