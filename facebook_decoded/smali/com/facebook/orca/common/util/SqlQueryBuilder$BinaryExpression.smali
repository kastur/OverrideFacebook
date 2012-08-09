.class public Lcom/facebook/orca/common/util/SqlQueryBuilder$BinaryExpression;
.super Lcom/facebook/orca/common/util/SqlQueryBuilder$Expression;
.source "SqlQueryBuilder.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/facebook/orca/common/util/SqlQueryBuilder$Expression;-><init>()V

    .line 164
    iput-object p1, p0, Lcom/facebook/orca/common/util/SqlQueryBuilder$BinaryExpression;->a:Ljava/lang/String;

    .line 165
    iput-object p2, p0, Lcom/facebook/orca/common/util/SqlQueryBuilder$BinaryExpression;->b:Ljava/lang/String;

    .line 166
    iput-object p3, p0, Lcom/facebook/orca/common/util/SqlQueryBuilder$BinaryExpression;->c:Ljava/lang/String;

    .line 167
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/facebook/orca/common/util/SqlQueryBuilder$BinaryExpression;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/orca/common/util/SqlQueryBuilder$BinaryExpression;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 177
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/facebook/orca/common/util/SqlQueryBuilder$BinaryExpression;->b:Ljava/lang/String;

    aput-object v2, v0, v1

    return-object v0
.end method
