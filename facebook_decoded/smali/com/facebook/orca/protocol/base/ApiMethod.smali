.class public interface abstract Lcom/facebook/orca/protocol/base/ApiMethod;
.super Ljava/lang/Object;
.source "ApiMethod.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<PARAMS:",
        "Ljava/lang/Object;",
        "RESU",
        "LT:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract a(Ljava/lang/Object;)Lcom/facebook/orca/protocol/base/ApiRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TPARAMS;)",
            "Lcom/facebook/orca/protocol/base/ApiRequest;"
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/Object;Lcom/facebook/orca/protocol/base/ApiResponse;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TPARAMS;",
            "Lcom/facebook/orca/protocol/base/ApiResponse;",
            ")TRESU",
            "LT;"
        }
    .end annotation
.end method
