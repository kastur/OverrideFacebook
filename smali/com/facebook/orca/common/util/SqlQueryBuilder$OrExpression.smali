.class public Lcom/facebook/orca/common/util/SqlQueryBuilder$OrExpression;
.super Lcom/facebook/orca/common/util/SqlQueryBuilder$ConjunctionExpression;
.source "SqlQueryBuilder.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 150
    const-string v0, "OR"

    invoke-direct {p0, v0}, Lcom/facebook/orca/common/util/SqlQueryBuilder$ConjunctionExpression;-><init>(Ljava/lang/String;)V

    .line 151
    return-void
.end method
