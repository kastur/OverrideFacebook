.class public Lcom/facebook/orca/common/util/SqlQueryBuilder;
.super Ljava/lang/Object;
.source "SqlQueryBuilder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    return-void
.end method

.method public static a()Lcom/facebook/orca/common/util/SqlQueryBuilder$AndExpression;
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/facebook/orca/common/util/SqlQueryBuilder$AndExpression;

    invoke-direct {v0}, Lcom/facebook/orca/common/util/SqlQueryBuilder$AndExpression;-><init>()V

    return-object v0
.end method

.method public static varargs a([Lcom/facebook/orca/common/util/SqlQueryBuilder$Expression;)Lcom/facebook/orca/common/util/SqlQueryBuilder$AndExpression;
    .locals 4
    .parameter

    .prologue
    .line 20
    new-instance v1, Lcom/facebook/orca/common/util/SqlQueryBuilder$AndExpression;

    invoke-direct {v1}, Lcom/facebook/orca/common/util/SqlQueryBuilder$AndExpression;-><init>()V

    .line 21
    array-length v2, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p0, v0

    .line 22
    invoke-virtual {v1, v3}, Lcom/facebook/orca/common/util/SqlQueryBuilder$AndExpression;->a(Lcom/facebook/orca/common/util/SqlQueryBuilder$Expression;)V

    .line 21
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 24
    :cond_0
    return-object v1
.end method

.method public static a(Ljava/lang/String;)Lcom/facebook/orca/common/util/SqlQueryBuilder$Expression;
    .locals 1
    .parameter

    .prologue
    .line 60
    new-instance v0, Lcom/facebook/orca/common/util/SqlQueryBuilder$RawExpression;

    invoke-direct {v0, p0}, Lcom/facebook/orca/common/util/SqlQueryBuilder$RawExpression;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/orca/common/util/SqlQueryBuilder$Expression;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 40
    new-instance v0, Lcom/facebook/orca/common/util/SqlQueryBuilder$EqualityExpression;

    invoke-direct {v0, p0, p1}, Lcom/facebook/orca/common/util/SqlQueryBuilder$EqualityExpression;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/orca/common/util/SqlQueryBuilder$Expression;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 48
    new-instance v0, Lcom/facebook/orca/common/util/SqlQueryBuilder$LteExpression;

    invoke-direct {v0, p0, p1}, Lcom/facebook/orca/common/util/SqlQueryBuilder$LteExpression;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/orca/common/util/SqlQueryBuilder$Expression;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 52
    new-instance v0, Lcom/facebook/orca/common/util/SqlQueryBuilder$GtExpression;

    invoke-direct {v0, p0, p1}, Lcom/facebook/orca/common/util/SqlQueryBuilder$GtExpression;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/orca/common/util/SqlQueryBuilder$Expression;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 56
    new-instance v0, Lcom/facebook/orca/common/util/SqlQueryBuilder$GteExpression;

    invoke-direct {v0, p0, p1}, Lcom/facebook/orca/common/util/SqlQueryBuilder$GteExpression;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
