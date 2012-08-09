.class public Lcom/facebook/apache/http/impl/cookie/IgnoreSpecFactory;
.super Ljava/lang/Object;
.source "IgnoreSpecFactory.java"

# interfaces
.implements Lcom/facebook/apache/http/cookie/CookieSpecFactory;


# annotations
.annotation build Lcom/facebook/apache/http/annotation/Immutable;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/apache/http/params/HttpParams;)Lcom/facebook/apache/http/cookie/CookieSpec;
    .locals 1
    .parameter

    .prologue
    .line 44
    new-instance v0, Lcom/facebook/apache/http/impl/cookie/IgnoreSpec;

    invoke-direct {v0}, Lcom/facebook/apache/http/impl/cookie/IgnoreSpec;-><init>()V

    return-object v0
.end method
