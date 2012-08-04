.class public Lcom/facebook/katana/service/method/PlacesCreateException$ErrorData;
.super Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;
.source "PlacesCreateException.java"


# instance fields
.field mInvalidNameReason:Ljava/lang/String;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "reason"
    .end annotation
.end field

.field mSimilarPlaces:Ljava/util/List;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$ListType;
        a = {
            Lcom/facebook/katana/service/method/PlacesCreateException$SimilarPlace;
        }
        jsonFieldName = "similar_places"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/service/method/PlacesCreateException$SimilarPlace;",
            ">;"
        }
    .end annotation
.end field

.field mSuggestedName:Ljava/lang/String;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "suggestion"
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;-><init>()V

    return-void
.end method
