.class public Lcom/facebook/apache/http/impl/auth/NTLMSchemeFactory;
.super Ljava/lang/Object;
.source "NTLMSchemeFactory.java"

# interfaces
.implements Lcom/facebook/apache/http/auth/AuthSchemeFactory;


# annotations
.annotation build Lcom/facebook/apache/http/annotation/Immutable;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/facebook/apache/http/auth/AuthScheme;
    .locals 2

    .prologue
    .line 47
    new-instance v0, Lcom/facebook/apache/http/impl/auth/NTLMScheme;

    new-instance v1, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl;

    invoke-direct {v1}, Lcom/facebook/apache/http/impl/auth/NTLMEngineImpl;-><init>()V

    invoke-direct {v0, v1}, Lcom/facebook/apache/http/impl/auth/NTLMScheme;-><init>(Lcom/facebook/apache/http/impl/auth/NTLMEngine;)V

    return-object v0
.end method
