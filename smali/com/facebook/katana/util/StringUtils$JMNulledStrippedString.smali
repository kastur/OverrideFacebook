.class public Lcom/facebook/katana/util/StringUtils$JMNulledStrippedString;
.super Lcom/facebook/katana/util/jsonmirror/types/JMString;
.source "StringUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 256
    invoke-direct {p0}, Lcom/facebook/katana/util/jsonmirror/types/JMString;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 259
    invoke-static {p1}, Lcom/facebook/katana/util/StringUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 260
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 261
    const/4 v0, 0x0

    .line 263
    :cond_0
    return-object v0
.end method
