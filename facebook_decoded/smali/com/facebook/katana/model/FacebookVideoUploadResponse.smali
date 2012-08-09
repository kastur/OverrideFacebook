.class public Lcom/facebook/katana/model/FacebookVideoUploadResponse;
.super Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;
.source "FacebookVideoUploadResponse.java"


# annotations
.annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$IgnoreUnexpectedJsonFields;
.end annotation


# instance fields
.field public final link:Ljava/lang/String;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "link"
    .end annotation
.end field

.field public final vid:Ljava/lang/String;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "vid"
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0}, Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;-><init>()V

    .line 36
    iput-object v0, p0, Lcom/facebook/katana/model/FacebookVideoUploadResponse;->link:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/facebook/katana/model/FacebookVideoUploadResponse;->vid:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public static a(Lorg/codehaus/jackson/JsonParser;)Lcom/facebook/katana/model/FacebookVideoUploadResponse;
    .locals 1
    .parameter

    .prologue
    .line 30
    const-class v0, Lcom/facebook/katana/model/FacebookVideoUploadResponse;

    invoke-static {p0, v0}, Lcom/facebook/katana/util/jsonmirror/JMParser;->a(Lorg/codehaus/jackson/JsonParser;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookVideoUploadResponse;

    .line 32
    return-object v0
.end method
