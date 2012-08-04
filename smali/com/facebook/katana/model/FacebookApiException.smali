.class public Lcom/facebook/katana/model/FacebookApiException;
.super Ljava/lang/Exception;
.source "FacebookApiException.java"


# instance fields
.field protected a:Lcom/facebook/katana/model/FacebookApiException$ServerExceptionData;

.field private b:Ljava/lang/Throwable;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 29
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 39
    new-instance v0, Lcom/facebook/katana/model/FacebookApiException$ServerExceptionData;

    invoke-direct {v0, p1, p2}, Lcom/facebook/katana/model/FacebookApiException$ServerExceptionData;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/katana/model/FacebookApiException;->a:Lcom/facebook/katana/model/FacebookApiException$ServerExceptionData;

    .line 40
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 51
    new-instance v0, Lcom/facebook/katana/model/FacebookApiException$ServerExceptionData;

    invoke-direct {v0, p1, p2, p3}, Lcom/facebook/katana/model/FacebookApiException$ServerExceptionData;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/katana/model/FacebookApiException;->a:Lcom/facebook/katana/model/FacebookApiException$ServerExceptionData;

    .line 52
    return-void
.end method

.method public constructor <init>(Lorg/codehaus/jackson/JsonParser;)V
    .locals 4
    .parameter

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 63
    :try_start_0
    const-class v0, Lcom/facebook/katana/model/FacebookApiException$ServerExceptionData;

    invoke-static {p1, v0}, Lcom/facebook/katana/util/jsonmirror/JMParser;->a(Lorg/codehaus/jackson/JsonParser;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookApiException$ServerExceptionData;

    iput-object v0, p0, Lcom/facebook/katana/model/FacebookApiException;->a:Lcom/facebook/katana/model/FacebookApiException$ServerExceptionData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :goto_0
    return-void

    .line 64
    :catch_0
    move-exception v0

    .line 67
    const-string v1, "FacebookApiException"

    const-string v2, "cannot parse response object"

    invoke-static {v1, v2, v0}, Lcom/facebook/katana/util/Log;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 68
    new-instance v1, Lcom/facebook/katana/model/FacebookApiException$ServerExceptionData;

    const/4 v2, -0x1

    const-string v3, "cannot parse error response"

    invoke-direct {v1, v2, v3}, Lcom/facebook/katana/model/FacebookApiException$ServerExceptionData;-><init>(ILjava/lang/String;)V

    iput-object v1, p0, Lcom/facebook/katana/model/FacebookApiException;->a:Lcom/facebook/katana/model/FacebookApiException$ServerExceptionData;

    .line 69
    iput-object v0, p0, Lcom/facebook/katana/model/FacebookApiException;->b:Ljava/lang/Throwable;

    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/facebook/katana/model/FacebookApiException;->a:Lcom/facebook/katana/model/FacebookApiException$ServerExceptionData;

    iget v0, v0, Lcom/facebook/katana/model/FacebookApiException$ServerExceptionData;->mErrorCode:I

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/facebook/katana/model/FacebookApiException;->a:Lcom/facebook/katana/model/FacebookApiException$ServerExceptionData;

    iget-object v0, v0, Lcom/facebook/katana/model/FacebookApiException$ServerExceptionData;->mErrorMsg:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/facebook/katana/model/FacebookApiException;->a:Lcom/facebook/katana/model/FacebookApiException$ServerExceptionData;

    iget-object v0, v0, Lcom/facebook/katana/model/FacebookApiException$ServerExceptionData;->mErrorData:Ljava/lang/String;

    return-object v0
.end method

.method public getCause()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/facebook/katana/model/FacebookApiException;->b:Ljava/lang/Throwable;

    return-object v0
.end method
