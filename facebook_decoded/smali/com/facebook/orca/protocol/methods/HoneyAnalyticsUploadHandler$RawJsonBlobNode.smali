.class Lcom/facebook/orca/protocol/methods/HoneyAnalyticsUploadHandler$RawJsonBlobNode;
.super Lorg/codehaus/jackson/node/ValueNode;
.source "HoneyAnalyticsUploadHandler.java"


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/protocol/methods/HoneyAnalyticsUploadHandler;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 70
    invoke-direct {p0}, Lorg/codehaus/jackson/node/ValueNode;-><init>()V

    .line 71
    iput-object p2, p0, Lcom/facebook/orca/protocol/methods/HoneyAnalyticsUploadHandler$RawJsonBlobNode;->a:Ljava/lang/String;

    .line 72
    return-void
.end method


# virtual methods
.method public final a(Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lcom/facebook/orca/protocol/methods/HoneyAnalyticsUploadHandler$RawJsonBlobNode;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonGenerator;->d(Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/facebook/orca/protocol/methods/HoneyAnalyticsUploadHandler$RawJsonBlobNode;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Lorg/codehaus/jackson/JsonToken;
    .locals 1

    .prologue
    .line 95
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 90
    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
