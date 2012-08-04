.class public Lcom/facebook/katana/service/method/AuthLogin$FacebookApiSessionInfo;
.super Lcom/facebook/katana/model/FacebookSessionInfo;
.source "AuthLogin.java"


# instance fields
.field public final mErrorCode:I
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "error_code"
    .end annotation
.end field

.field public final mErrorMsg:Ljava/lang/String;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "error_msg"
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 246
    invoke-direct {p0}, Lcom/facebook/katana/model/FacebookSessionInfo;-><init>()V

    .line 247
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/katana/service/method/AuthLogin$FacebookApiSessionInfo;->mErrorCode:I

    .line 248
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/katana/service/method/AuthLogin$FacebookApiSessionInfo;->mErrorMsg:Ljava/lang/String;

    .line 249
    return-void
.end method
