.class public Lcom/facebook/apache/http/entity/mime/FormBodyPart;
.super Ljava/lang/Object;
.source "FormBodyPart.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/facebook/apache/http/entity/mime/Header;

.field private final c:Lcom/facebook/apache/http/entity/mime/content/ContentBody;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/facebook/apache/http/entity/mime/content/ContentBody;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    if-nez p1, :cond_0

    .line 49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Name may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_0
    if-nez p2, :cond_1

    .line 52
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Body may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_1
    iput-object p1, p0, Lcom/facebook/apache/http/entity/mime/FormBodyPart;->a:Ljava/lang/String;

    .line 55
    iput-object p2, p0, Lcom/facebook/apache/http/entity/mime/FormBodyPart;->c:Lcom/facebook/apache/http/entity/mime/content/ContentBody;

    .line 56
    new-instance v0, Lcom/facebook/apache/http/entity/mime/Header;

    invoke-direct {v0}, Lcom/facebook/apache/http/entity/mime/Header;-><init>()V

    iput-object v0, p0, Lcom/facebook/apache/http/entity/mime/FormBodyPart;->b:Lcom/facebook/apache/http/entity/mime/Header;

    .line 58
    invoke-direct {p0, p2}, Lcom/facebook/apache/http/entity/mime/FormBodyPart;->a(Lcom/facebook/apache/http/entity/mime/content/ContentBody;)V

    .line 59
    invoke-direct {p0, p2}, Lcom/facebook/apache/http/entity/mime/FormBodyPart;->b(Lcom/facebook/apache/http/entity/mime/content/ContentBody;)V

    .line 60
    invoke-direct {p0, p2}, Lcom/facebook/apache/http/entity/mime/FormBodyPart;->c(Lcom/facebook/apache/http/entity/mime/content/ContentBody;)V

    .line 61
    return-void
.end method

.method private a(Lcom/facebook/apache/http/entity/mime/content/ContentBody;)V
    .locals 2
    .parameter

    .prologue
    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    const-string v1, "form-data; name=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {p0}, Lcom/facebook/apache/http/entity/mime/FormBodyPart;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-interface {p1}, Lcom/facebook/apache/http/entity/mime/content/ContentBody;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 88
    const-string v1, "; filename=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-interface {p1}, Lcom/facebook/apache/http/entity/mime/content/ContentBody;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    :cond_0
    const-string v1, "Content-Disposition"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/facebook/apache/http/entity/mime/FormBodyPart;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 76
    if-nez p1, :cond_0

    .line 77
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Field name may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/facebook/apache/http/entity/mime/FormBodyPart;->b:Lcom/facebook/apache/http/entity/mime/Header;

    new-instance v1, Lcom/facebook/apache/http/entity/mime/MinimalField;

    invoke-direct {v1, p1, p2}, Lcom/facebook/apache/http/entity/mime/MinimalField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/facebook/apache/http/entity/mime/Header;->a(Lcom/facebook/apache/http/entity/mime/MinimalField;)V

    .line 80
    return-void
.end method

.method private b(Lcom/facebook/apache/http/entity/mime/content/ContentBody;)V
    .locals 2
    .parameter

    .prologue
    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    invoke-interface {p1}, Lcom/facebook/apache/http/entity/mime/content/ContentBody;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-interface {p1}, Lcom/facebook/apache/http/entity/mime/content/ContentBody;->c()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 99
    const-string v1, "; charset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-interface {p1}, Lcom/facebook/apache/http/entity/mime/content/ContentBody;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    :cond_0
    const-string v1, "Content-Type"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/facebook/apache/http/entity/mime/FormBodyPart;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method private c(Lcom/facebook/apache/http/entity/mime/content/ContentBody;)V
    .locals 2
    .parameter

    .prologue
    .line 106
    const-string v0, "Content-Transfer-Encoding"

    invoke-interface {p1}, Lcom/facebook/apache/http/entity/mime/content/ContentBody;->d()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/facebook/apache/http/entity/mime/FormBodyPart;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/facebook/apache/http/entity/mime/FormBodyPart;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Lcom/facebook/apache/http/entity/mime/content/ContentBody;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/facebook/apache/http/entity/mime/FormBodyPart;->c:Lcom/facebook/apache/http/entity/mime/content/ContentBody;

    return-object v0
.end method

.method public final c()Lcom/facebook/apache/http/entity/mime/Header;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/facebook/apache/http/entity/mime/FormBodyPart;->b:Lcom/facebook/apache/http/entity/mime/Header;

    return-object v0
.end method
