.class public Lcom/facebook/apache/http/impl/auth/DigestSchemeFactory;
.super Ljava/lang/Object;
.source "DigestSchemeFactory.java"

# interfaces
.implements Lcom/facebook/apache/http/auth/AuthSchemeFactory;


# annotations
.annotation build Lcom/facebook/apache/http/annotation/Immutable;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/facebook/apache/http/auth/AuthScheme;
    .locals 1

    .prologue
    .line 46
    new-instance v0, Lcom/facebook/apache/http/impl/auth/DigestScheme;

    invoke-direct {v0}, Lcom/facebook/apache/http/impl/auth/DigestScheme;-><init>()V

    return-object v0
.end method
