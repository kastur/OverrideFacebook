.class public Lcom/facebook/katana/model/GraphRequestResponse;
.super Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;
.source "GraphRequestResponse.java"


# static fields
.field public static final INVALID_ID:I = -0x1


# instance fields
.field public final body:Ljava/lang/String;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "body"
    .end annotation
.end field

.field public final code:I
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "code"
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;-><init>()V

    .line 19
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/katana/model/GraphRequestResponse;->code:I

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/katana/model/GraphRequestResponse;->body:Ljava/lang/String;

    .line 21
    return-void
.end method
