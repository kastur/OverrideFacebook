.class public Lcom/facebook/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;
.super Ljava/lang/Object;
.source "DoubleMetaphone.java"


# instance fields
.field private a:Ljava/lang/StringBuffer;

.field private b:Ljava/lang/StringBuffer;

.field private c:I

.field private synthetic d:Lcom/facebook/apache/commons/codec/language/DoubleMetaphone;


# direct methods
.method public constructor <init>(Lcom/facebook/apache/commons/codec/language/DoubleMetaphone;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1038
    iput-object p1, p0, Lcom/facebook/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->d:Lcom/facebook/apache/commons/codec/language/DoubleMetaphone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1034
    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/facebook/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->d:Lcom/facebook/apache/commons/codec/language/DoubleMetaphone;

    invoke-virtual {v1}, Lcom/facebook/apache/commons/codec/language/DoubleMetaphone;->a()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->a:Ljava/lang/StringBuffer;

    .line 1035
    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/facebook/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->d:Lcom/facebook/apache/commons/codec/language/DoubleMetaphone;

    invoke-virtual {v1}, Lcom/facebook/apache/commons/codec/language/DoubleMetaphone;->a()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->b:Ljava/lang/StringBuffer;

    .line 1039
    iput p2, p0, Lcom/facebook/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->c:I

    .line 1040
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 1075
    iget v0, p0, Lcom/facebook/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->c:I

    iget-object v1, p0, Lcom/facebook/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1076
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, v0, :cond_0

    .line 1077
    iget-object v0, p0, Lcom/facebook/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1081
    :goto_0
    return-void

    .line 1079
    :cond_0
    iget-object v1, p0, Lcom/facebook/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->a:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method private c(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 1084
    iget v0, p0, Lcom/facebook/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->c:I

    iget-object v1, p0, Lcom/facebook/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1085
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, v0, :cond_0

    .line 1086
    iget-object v0, p0, Lcom/facebook/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1090
    :goto_0
    return-void

    .line 1088
    :cond_0
    iget-object v1, p0, Lcom/facebook/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->b:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1093
    iget-object v0, p0, Lcom/facebook/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(C)V
    .locals 0
    .parameter

    .prologue
    .line 1043
    invoke-virtual {p0, p1}, Lcom/facebook/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->b(C)V

    .line 1044
    invoke-virtual {p0, p1}, Lcom/facebook/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->c(C)V

    .line 1045
    return-void
.end method

.method public final a(CC)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1048
    invoke-virtual {p0, p1}, Lcom/facebook/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->b(C)V

    .line 1049
    invoke-virtual {p0, p2}, Lcom/facebook/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->c(C)V

    .line 1050
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 1065
    invoke-direct {p0, p1}, Lcom/facebook/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->b(Ljava/lang/String;)V

    .line 1066
    invoke-direct {p0, p1}, Lcom/facebook/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->c(Ljava/lang/String;)V

    .line 1067
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1070
    invoke-direct {p0, p1}, Lcom/facebook/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->b(Ljava/lang/String;)V

    .line 1071
    invoke-direct {p0, p2}, Lcom/facebook/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->c(Ljava/lang/String;)V

    .line 1072
    return-void
.end method

.method public final b(C)V
    .locals 2
    .parameter

    .prologue
    .line 1053
    iget-object v0, p0, Lcom/facebook/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    iget v1, p0, Lcom/facebook/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->c:I

    if-ge v0, v1, :cond_0

    .line 1054
    iget-object v0, p0, Lcom/facebook/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1056
    :cond_0
    return-void
.end method

.method public final b()Z
    .locals 2

    .prologue
    .line 1101
    iget-object v0, p0, Lcom/facebook/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    iget v1, p0, Lcom/facebook/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->c:I

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/facebook/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    iget v1, p0, Lcom/facebook/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->c:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c(C)V
    .locals 2
    .parameter

    .prologue
    .line 1059
    iget-object v0, p0, Lcom/facebook/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    iget v1, p0, Lcom/facebook/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->c:I

    if-ge v0, v1, :cond_0

    .line 1060
    iget-object v0, p0, Lcom/facebook/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1062
    :cond_0
    return-void
.end method
