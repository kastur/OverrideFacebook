.class public Lcom/facebook/orca/protocol/methods/SourceDeserializer;
.super Ljava/lang/Object;
.source "SourceDeserializer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 19
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonNode;->x()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 20
    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/JsonNode;->a(I)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v1

    .line 21
    const-string v2, "messenger"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 28
    :goto_1
    return-object v0

    .line 24
    :cond_0
    const-string v2, "source:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 25
    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 19
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 28
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
