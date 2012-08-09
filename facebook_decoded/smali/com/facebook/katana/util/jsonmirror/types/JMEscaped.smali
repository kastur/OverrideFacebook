.class public Lcom/facebook/katana/util/jsonmirror/types/JMEscaped;
.super Lcom/facebook/katana/util/jsonmirror/types/JMBase;
.source "JMEscaped.java"


# instance fields
.field public final c:Lcom/facebook/katana/util/jsonmirror/types/JMBase;

.field public final d:Lorg/codehaus/jackson/JsonFactory;


# direct methods
.method public constructor <init>(Lcom/facebook/katana/util/jsonmirror/types/JMBase;Lorg/codehaus/jackson/JsonFactory;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/facebook/katana/util/jsonmirror/types/JMBase;-><init>()V

    .line 17
    instance-of v0, p1, Lcom/facebook/katana/util/jsonmirror/types/JMDict;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/facebook/katana/util/jsonmirror/types/JMSimpleDict;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/facebook/katana/util/jsonmirror/types/JMList;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lcom/facebook/katana/util/jsonmirror/JMFatalException;

    const-string v1, "stringified values can only encapsulate complex types."

    invoke-direct {v0, v1}, Lcom/facebook/katana/util/jsonmirror/JMFatalException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 24
    :cond_0
    iput-object p1, p0, Lcom/facebook/katana/util/jsonmirror/types/JMEscaped;->c:Lcom/facebook/katana/util/jsonmirror/types/JMBase;

    .line 25
    iput-object p2, p0, Lcom/facebook/katana/util/jsonmirror/types/JMEscaped;->d:Lorg/codehaus/jackson/JsonFactory;

    .line 26
    return-void
.end method
