.class public Lcom/facebook/orca/common/util/SqlQueryBuilder$RawExpression;
.super Lcom/facebook/orca/common/util/SqlQueryBuilder$Expression;
.source "SqlQueryBuilder.java"


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/facebook/orca/common/util/SqlQueryBuilder$Expression;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/facebook/orca/common/util/SqlQueryBuilder$RawExpression;->a:Ljava/lang/String;

    .line 79
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/facebook/orca/common/util/SqlQueryBuilder$RawExpression;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method
