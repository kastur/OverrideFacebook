.class public Lcom/facebook/katana/util/StringUtils$JMNulledString;
.super Lcom/facebook/katana/util/jsonmirror/types/JMString;
.source "StringUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 240
    invoke-direct {p0}, Lcom/facebook/katana/util/jsonmirror/types/JMString;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 243
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 244
    const/4 p1, 0x0

    .line 246
    :cond_0
    return-object p1
.end method
