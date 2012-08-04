.class public Lcom/facebook/katana/service/method/PlacesCreateException;
.super Lcom/facebook/katana/model/FacebookApiException;
.source "PlacesCreateException.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/facebook/katana/service/method/PlacesCreateException;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/codehaus/jackson/JsonParser;)V
    .locals 1
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/facebook/katana/model/FacebookApiException;-><init>()V

    .line 30
    const-class v0, Lcom/facebook/katana/service/method/PlacesCreateException$PlacesServerExceptionData;

    invoke-static {p1, v0}, Lcom/facebook/katana/util/jsonmirror/JMParser;->a(Lorg/codehaus/jackson/JsonParser;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookApiException$ServerExceptionData;

    iput-object v0, p0, Lcom/facebook/katana/service/method/PlacesCreateException;->a:Lcom/facebook/katana/model/FacebookApiException$ServerExceptionData;

    .line 31
    iget-object v0, p0, Lcom/facebook/katana/service/method/PlacesCreateException;->a:Lcom/facebook/katana/model/FacebookApiException$ServerExceptionData;

    invoke-static {v0}, Lcom/facebook/katana/util/Assert;->a(Ljava/lang/Object;)V

    .line 32
    return-void
.end method


# virtual methods
.method public final d()Ljava/util/List;
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
    .line 35
    iget-object v0, p0, Lcom/facebook/katana/service/method/PlacesCreateException;->a:Lcom/facebook/katana/model/FacebookApiException$ServerExceptionData;

    check-cast v0, Lcom/facebook/katana/service/method/PlacesCreateException$PlacesServerExceptionData;

    invoke-virtual {v0}, Lcom/facebook/katana/service/method/PlacesCreateException$PlacesServerExceptionData;->c()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/facebook/katana/service/method/PlacesCreateException;->a:Lcom/facebook/katana/model/FacebookApiException$ServerExceptionData;

    check-cast v0, Lcom/facebook/katana/service/method/PlacesCreateException$PlacesServerExceptionData;

    invoke-virtual {v0}, Lcom/facebook/katana/service/method/PlacesCreateException$PlacesServerExceptionData;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/facebook/katana/service/method/PlacesCreateException;->a:Lcom/facebook/katana/model/FacebookApiException$ServerExceptionData;

    check-cast v0, Lcom/facebook/katana/service/method/PlacesCreateException$PlacesServerExceptionData;

    invoke-virtual {v0}, Lcom/facebook/katana/service/method/PlacesCreateException$PlacesServerExceptionData;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
