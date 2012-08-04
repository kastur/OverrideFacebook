.class Lcom/facebook/katana/util/UriTemplateMap$QueryParameter;
.super Ljava/lang/Object;
.source "UriTemplateMap.java"


# instance fields
.field a:Z

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Lcom/facebook/katana/util/UriTemplateMap$TemplateValueType;


# direct methods
.method constructor <init>(Lcom/facebook/katana/util/UriTemplateMap;Ljava/lang/String;Lcom/facebook/katana/util/UriTemplateMap$TemplateValueType;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput-object p2, p0, Lcom/facebook/katana/util/UriTemplateMap$QueryParameter;->c:Ljava/lang/String;

    .line 120
    iput-object p3, p0, Lcom/facebook/katana/util/UriTemplateMap$QueryParameter;->d:Lcom/facebook/katana/util/UriTemplateMap$TemplateValueType;

    .line 121
    iput-object p4, p0, Lcom/facebook/katana/util/UriTemplateMap$QueryParameter;->b:Ljava/lang/String;

    .line 122
    if-nez p4, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/facebook/katana/util/UriTemplateMap$QueryParameter;->a:Z

    .line 123
    return-void

    .line 122
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
