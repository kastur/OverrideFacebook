.class public Lcom/facebook/katana/ui/TaggingAutoCompleteTextView$TaggedUser;
.super Ljava/lang/Object;
.source "TaggingAutoCompleteTextView.java"

# interfaces
.implements Ljava/lang/CharSequence;


# instance fields
.field public final a:Lcom/facebook/katana/model/FacebookProfile;


# direct methods
.method public constructor <init>(Lcom/facebook/katana/model/FacebookProfile;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/facebook/katana/ui/TaggingAutoCompleteTextView$TaggedUser;->a:Lcom/facebook/katana/model/FacebookProfile;

    .line 49
    return-void
.end method


# virtual methods
.method public charAt(I)C
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/facebook/katana/ui/TaggingAutoCompleteTextView$TaggedUser;->a:Lcom/facebook/katana/model/FacebookProfile;

    iget-object v0, v0, Lcom/facebook/katana/model/FacebookProfile;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/facebook/katana/ui/TaggingAutoCompleteTextView$TaggedUser;->a:Lcom/facebook/katana/model/FacebookProfile;

    iget-object v0, v0, Lcom/facebook/katana/model/FacebookProfile;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/facebook/katana/ui/TaggingAutoCompleteTextView$TaggedUser;->a:Lcom/facebook/katana/model/FacebookProfile;

    iget-object v0, v0, Lcom/facebook/katana/model/FacebookProfile;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/facebook/katana/ui/TaggingAutoCompleteTextView$TaggedUser;->a:Lcom/facebook/katana/model/FacebookProfile;

    iget-object v0, v0, Lcom/facebook/katana/model/FacebookProfile;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method
