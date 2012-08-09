.class public Lcom/facebook/katana/service/method/PlacesCreateException$PlacesServerExceptionData;
.super Lcom/facebook/katana/model/FacebookApiException$ServerExceptionData;
.source "PlacesCreateException.java"


# instance fields
.field mPlaceErrorData:Lcom/facebook/katana/service/method/PlacesCreateException$ErrorData;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/facebook/katana/model/FacebookApiException$ServerExceptionData;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/katana/service/method/PlacesCreateException$PlacesServerExceptionData;->mPlaceErrorData:Lcom/facebook/katana/service/method/PlacesCreateException$ErrorData;

    return-void
.end method

.method private f()V
    .locals 3

    .prologue
    .line 64
    iget-object v0, p0, Lcom/facebook/katana/service/method/PlacesCreateException$PlacesServerExceptionData;->mPlaceErrorData:Lcom/facebook/katana/service/method/PlacesCreateException$ErrorData;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/katana/service/method/PlacesCreateException$PlacesServerExceptionData;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 65
    const/4 v1, 0x0

    .line 67
    :try_start_0
    new-instance v0, Lcom/facebook/katana/service/method/FBJsonFactory;

    invoke-direct {v0}, Lcom/facebook/katana/service/method/FBJsonFactory;-><init>()V

    .line 68
    invoke-virtual {p0}, Lcom/facebook/katana/service/method/PlacesCreateException$PlacesServerExceptionData;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/facebook/katana/service/method/FBJsonFactory;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v0

    .line 69
    const-class v2, Lcom/facebook/katana/service/method/PlacesCreateException$ErrorData;

    invoke-static {v2}, Lcom/facebook/katana/util/jsonmirror/JMAutogen;->a(Ljava/lang/Class;)Lcom/facebook/katana/util/jsonmirror/types/JMDict;

    move-result-object v2

    .line 70
    invoke-static {v0, v2}, Lcom/facebook/katana/util/jsonmirror/JMParser;->a(Lorg/codehaus/jackson/JsonParser;Lcom/facebook/katana/util/jsonmirror/types/JMBase;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/service/method/PlacesCreateException$ErrorData;

    iput-object v0, p0, Lcom/facebook/katana/service/method/PlacesCreateException$PlacesServerExceptionData;->mPlaceErrorData:Lcom/facebook/katana/service/method/PlacesCreateException$ErrorData;
    :try_end_0
    .catch Lorg/codehaus/jackson/JsonParseException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/facebook/katana/util/jsonmirror/JMException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 78
    :goto_0
    if-eqz v0, :cond_0

    .line 79
    const-string v1, "JMCachingDictDestination"

    const-string v2, "Exception parsing creation exception"

    invoke-static {v1, v2, v0}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 82
    :cond_0
    return-void

    .line 75
    :catch_0
    move-exception v0

    goto :goto_0

    .line 73
    :catch_1
    move-exception v0

    goto :goto_0

    .line 71
    :catch_2
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public final c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/service/method/PlacesCreateException$SimilarPlace;",
            ">;"
        }
    .end annotation

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/facebook/katana/service/method/PlacesCreateException$PlacesServerExceptionData;->f()V

    .line 86
    iget-object v0, p0, Lcom/facebook/katana/service/method/PlacesCreateException$PlacesServerExceptionData;->mPlaceErrorData:Lcom/facebook/katana/service/method/PlacesCreateException$ErrorData;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/facebook/katana/service/method/PlacesCreateException$PlacesServerExceptionData;->mPlaceErrorData:Lcom/facebook/katana/service/method/PlacesCreateException$ErrorData;

    iget-object v0, v0, Lcom/facebook/katana/service/method/PlacesCreateException$ErrorData;->mSimilarPlaces:Ljava/util/List;

    .line 89
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/facebook/katana/service/method/PlacesCreateException$PlacesServerExceptionData;->f()V

    .line 95
    iget-object v0, p0, Lcom/facebook/katana/service/method/PlacesCreateException$PlacesServerExceptionData;->mPlaceErrorData:Lcom/facebook/katana/service/method/PlacesCreateException$ErrorData;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/facebook/katana/service/method/PlacesCreateException$PlacesServerExceptionData;->mPlaceErrorData:Lcom/facebook/katana/service/method/PlacesCreateException$ErrorData;

    iget-object v0, v0, Lcom/facebook/katana/service/method/PlacesCreateException$ErrorData;->mSuggestedName:Ljava/lang/String;

    .line 98
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/facebook/katana/service/method/PlacesCreateException$PlacesServerExceptionData;->f()V

    .line 104
    iget-object v0, p0, Lcom/facebook/katana/service/method/PlacesCreateException$PlacesServerExceptionData;->mPlaceErrorData:Lcom/facebook/katana/service/method/PlacesCreateException$ErrorData;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/facebook/katana/service/method/PlacesCreateException$PlacesServerExceptionData;->mPlaceErrorData:Lcom/facebook/katana/service/method/PlacesCreateException$ErrorData;

    iget-object v0, v0, Lcom/facebook/katana/service/method/PlacesCreateException$ErrorData;->mInvalidNameReason:Ljava/lang/String;

    .line 107
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
