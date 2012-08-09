.class public Lorg/codehaus/jackson/map/TreeMapper;
.super Lorg/codehaus/jackson/node/JsonNodeFactory;
.source "TreeMapper.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/TreeMapper;-><init>(Lorg/codehaus/jackson/map/ObjectMapper;)V

    .line 44
    return-void
.end method

.method private constructor <init>(Lorg/codehaus/jackson/map/ObjectMapper;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    invoke-direct {p0}, Lorg/codehaus/jackson/node/JsonNodeFactory;-><init>()V

    .line 48
    return-void
.end method
