.class public Lcom/facebook/contacts/models/ContactBuilder;
.super Ljava/lang/Object;
.source "ContactBuilder.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/facebook/contacts/models/ContactBuilder;
    .locals 0
    .parameter

    .prologue
    .line 15
    iput-object p1, p0, Lcom/facebook/contacts/models/ContactBuilder;->a:Ljava/lang/String;

    .line 16
    return-object p0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/facebook/contacts/models/ContactBuilder;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Lcom/facebook/contacts/models/ContactBuilder;
    .locals 0
    .parameter

    .prologue
    .line 24
    iput-object p1, p0, Lcom/facebook/contacts/models/ContactBuilder;->b:Ljava/lang/String;

    .line 25
    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/facebook/contacts/models/ContactBuilder;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c(Ljava/lang/String;)Lcom/facebook/contacts/models/ContactBuilder;
    .locals 0
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lcom/facebook/contacts/models/ContactBuilder;->c:Ljava/lang/String;

    .line 34
    return-object p0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/facebook/contacts/models/ContactBuilder;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Lcom/facebook/contacts/models/Contact;
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lcom/facebook/contacts/models/Contact;

    invoke-direct {v0, p0}, Lcom/facebook/contacts/models/Contact;-><init>(Lcom/facebook/contacts/models/ContactBuilder;)V

    return-object v0
.end method
