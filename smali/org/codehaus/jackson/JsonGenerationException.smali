.class public Lorg/codehaus/jackson/JsonGenerationException;
.super Lorg/codehaus/jackson/JsonProcessingException;
.source "JsonGenerationException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 20
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/codehaus/jackson/JsonProcessingException;-><init>(Ljava/lang/String;Lorg/codehaus/jackson/JsonLocation;)V

    .line 21
    return-void
.end method
