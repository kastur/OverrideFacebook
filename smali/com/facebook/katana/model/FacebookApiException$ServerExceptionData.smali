.class public Lcom/facebook/katana/model/FacebookApiException$ServerExceptionData;
.super Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;
.source "FacebookApiException.java"


# instance fields
.field final mErrorCode:I
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "error_code"
    .end annotation
.end field

.field final mErrorData:Ljava/lang/String;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "error_data"
    .end annotation
.end field

.field final mErrorMsg:Ljava/lang/String;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "error_msg"
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 113
    invoke-direct {p0}, Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;-><init>()V

    .line 114
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/katana/model/FacebookApiException$ServerExceptionData;->mErrorCode:I

    .line 115
    iput-object v1, p0, Lcom/facebook/katana/model/FacebookApiException$ServerExceptionData;->mErrorMsg:Ljava/lang/String;

    .line 116
    iput-object v1, p0, Lcom/facebook/katana/model/FacebookApiException$ServerExceptionData;->mErrorData:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;-><init>()V

    .line 121
    iput p1, p0, Lcom/facebook/katana/model/FacebookApiException$ServerExceptionData;->mErrorCode:I

    .line 122
    iput-object p2, p0, Lcom/facebook/katana/model/FacebookApiException$ServerExceptionData;->mErrorMsg:Ljava/lang/String;

    .line 123
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/katana/model/FacebookApiException$ServerExceptionData;->mErrorData:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;-><init>()V

    .line 128
    iput p1, p0, Lcom/facebook/katana/model/FacebookApiException$ServerExceptionData;->mErrorCode:I

    .line 129
    iput-object p2, p0, Lcom/facebook/katana/model/FacebookApiException$ServerExceptionData;->mErrorMsg:Ljava/lang/String;

    .line 130
    iput-object p3, p0, Lcom/facebook/katana/model/FacebookApiException$ServerExceptionData;->mErrorData:Ljava/lang/String;

    .line 131
    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/facebook/katana/model/FacebookApiException$ServerExceptionData;->mErrorData:Ljava/lang/String;

    return-object v0
.end method
