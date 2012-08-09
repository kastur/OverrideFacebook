.class Lcom/facebook/orca/app/MessagesModule$PhoneUserIteratorProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessagesModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/users/PhoneUserIterator;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/facebook/orca/app/MessagesModule;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/MessagesModule;)V
    .locals 0
    .parameter

    .prologue
    .line 2063
    iput-object p1, p0, Lcom/facebook/orca/app/MessagesModule$PhoneUserIteratorProvider;->a:Lcom/facebook/orca/app/MessagesModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/MessagesModule;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2063
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/MessagesModule$PhoneUserIteratorProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;)V

    return-void
.end method

.method private b()Lcom/facebook/orca/users/PhoneUserIterator;
    .locals 3

    .prologue
    .line 2067
    new-instance v1, Lcom/facebook/orca/users/PhoneUserIterator;

    iget-object v0, p0, Lcom/facebook/orca/app/MessagesModule$PhoneUserIteratorProvider;->a:Lcom/facebook/orca/app/MessagesModule;

    invoke-static {v0}, Lcom/facebook/orca/app/MessagesModule;->a(Lcom/facebook/orca/app/MessagesModule;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-class v0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule$PhoneUserIteratorProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    invoke-direct {v1, v2, v0}, Lcom/facebook/orca/users/PhoneUserIterator;-><init>(Landroid/content/ContentResolver;Lcom/google/i18n/phonenumbers/PhoneNumberUtil;)V

    return-object v1
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2063
    invoke-direct {p0}, Lcom/facebook/orca/app/MessagesModule$PhoneUserIteratorProvider;->b()Lcom/facebook/orca/users/PhoneUserIterator;

    move-result-object v0

    return-object v0
.end method
