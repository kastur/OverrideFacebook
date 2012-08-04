.class Lcom/facebook/katana/activity/places/AddPlaceActivity$1;
.super Lcom/facebook/katana/binding/AppSessionListener;
.source "AddPlaceActivity.java"


# instance fields
.field final synthetic a:Lcom/facebook/katana/activity/places/AddPlaceActivity;


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/places/AddPlaceActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/facebook/katana/activity/places/AddPlaceActivity$1;->a:Lcom/facebook/katana/activity/places/AddPlaceActivity;

    invoke-direct {p0}, Lcom/facebook/katana/binding/AppSessionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/Exception;J)V
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x0

    const v7, 0x7f0b0269

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 78
    iget-object v0, p0, Lcom/facebook/katana/activity/places/AddPlaceActivity$1;->a:Lcom/facebook/katana/activity/places/AddPlaceActivity;

    sget-object v3, Lcom/facebook/katana/activity/places/AddPlaceActivity$State;->NONE:Lcom/facebook/katana/activity/places/AddPlaceActivity$State;

    invoke-static {v0, v3}, Lcom/facebook/katana/activity/places/AddPlaceActivity;->a(Lcom/facebook/katana/activity/places/AddPlaceActivity;Lcom/facebook/katana/activity/places/AddPlaceActivity$State;)Lcom/facebook/katana/activity/places/AddPlaceActivity$State;

    .line 79
    iget-object v0, p0, Lcom/facebook/katana/activity/places/AddPlaceActivity$1;->a:Lcom/facebook/katana/activity/places/AddPlaceActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/places/AddPlaceActivity;->a(Lcom/facebook/katana/activity/places/AddPlaceActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 81
    iget-object v0, p0, Lcom/facebook/katana/activity/places/AddPlaceActivity$1;->a:Lcom/facebook/katana/activity/places/AddPlaceActivity;

    const v3, 0x7f080288

    invoke-virtual {v0, v3}, Lcom/facebook/katana/activity/places/AddPlaceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 82
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 84
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_1

    .line 85
    iget-object v0, p0, Lcom/facebook/katana/activity/places/AddPlaceActivity$1;->a:Lcom/facebook/katana/activity/places/AddPlaceActivity;

    invoke-static {v0, p3, p4, v3}, Lcom/facebook/katana/activity/places/AddPlaceActivity;->a(Lcom/facebook/katana/activity/places/AddPlaceActivity;JLjava/lang/String;)V

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    instance-of v0, p2, Lcom/facebook/katana/service/method/PlacesCreateException;

    if-eqz v0, :cond_c

    move-object v0, p2

    .line 90
    check-cast v0, Lcom/facebook/katana/service/method/PlacesCreateException;

    .line 91
    invoke-virtual {v0}, Lcom/facebook/katana/service/method/PlacesCreateException;->a()I

    move-result v4

    const/16 v5, 0x966

    if-ne v4, v5, :cond_3

    invoke-virtual {v0}, Lcom/facebook/katana/service/method/PlacesCreateException;->d()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 95
    invoke-virtual {v0}, Lcom/facebook/katana/service/method/PlacesCreateException;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/service/method/PlacesCreateException$SimilarPlace;

    .line 98
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/facebook/katana/activity/places/AddPlaceActivity$1;->a:Lcom/facebook/katana/activity/places/AddPlaceActivity;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 99
    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 100
    const v5, 0x7f0b0411

    new-instance v6, Lcom/facebook/katana/activity/places/AddPlaceActivity$1$1;

    invoke-direct {v6, p0, v0}, Lcom/facebook/katana/activity/places/AddPlaceActivity$1$1;-><init>(Lcom/facebook/katana/activity/places/AddPlaceActivity$1;Lcom/facebook/katana/service/method/PlacesCreateException$SimilarPlace;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 108
    iget-object v5, v0, Lcom/facebook/katana/service/method/PlacesCreateException$SimilarPlace;->mName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_2

    .line 109
    iget-object v3, p0, Lcom/facebook/katana/activity/places/AddPlaceActivity$1;->a:Lcom/facebook/katana/activity/places/AddPlaceActivity;

    const v5, 0x7f0b03f9

    new-array v6, v1, [Ljava/lang/Object;

    iget-object v0, v0, Lcom/facebook/katana/service/method/PlacesCreateException$SimilarPlace;->mName:Ljava/lang/String;

    aput-object v0, v6, v2

    invoke-virtual {v3, v5, v6}, Lcom/facebook/katana/activity/places/AddPlaceActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 126
    :goto_1
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move v0, v1

    .line 182
    :goto_2
    if-nez v0, :cond_0

    .line 183
    const-string v0, "AddPlaceActivity"

    const-string v1, "Exception when adding place"

    invoke-static {v0, v1, p2}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 184
    iget-object v0, p0, Lcom/facebook/katana/activity/places/AddPlaceActivity$1;->a:Lcom/facebook/katana/activity/places/AddPlaceActivity;

    const v1, 0x7f0b03f5

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Toaster;->a(Landroid/content/Context;I)V

    goto :goto_0

    .line 113
    :cond_2
    iget-object v5, p0, Lcom/facebook/katana/activity/places/AddPlaceActivity$1;->a:Lcom/facebook/katana/activity/places/AddPlaceActivity;

    const v6, 0x7f0b03fa

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, v0, Lcom/facebook/katana/service/method/PlacesCreateException$SimilarPlace;->mName:Ljava/lang/String;

    aput-object v8, v7, v2

    aput-object v3, v7, v1

    invoke-virtual {v5, v6, v7}, Lcom/facebook/katana/activity/places/AddPlaceActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 115
    const v2, 0x7f0b0412

    new-instance v3, Lcom/facebook/katana/activity/places/AddPlaceActivity$1$2;

    invoke-direct {v3, p0, v0}, Lcom/facebook/katana/activity/places/AddPlaceActivity$1$2;-><init>(Lcom/facebook/katana/activity/places/AddPlaceActivity$1;Lcom/facebook/katana/service/method/PlacesCreateException$SimilarPlace;)V

    invoke-virtual {v4, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 127
    :cond_3
    invoke-virtual {v0}, Lcom/facebook/katana/service/method/PlacesCreateException;->a()I

    move-result v3

    const/16 v4, 0x969

    if-ne v3, v4, :cond_b

    .line 128
    invoke-virtual {v0}, Lcom/facebook/katana/service/method/PlacesCreateException;->e()Ljava/lang/String;

    move-result-object v3

    .line 129
    invoke-virtual {v0}, Lcom/facebook/katana/service/method/PlacesCreateException;->f()Ljava/lang/String;

    move-result-object v0

    .line 130
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/facebook/katana/activity/places/AddPlaceActivity$1;->a:Lcom/facebook/katana/activity/places/AddPlaceActivity;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 132
    if-nez v3, :cond_7

    .line 133
    const-string v2, "invalid_chars"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 134
    iget-object v0, p0, Lcom/facebook/katana/activity/places/AddPlaceActivity$1;->a:Lcom/facebook/katana/activity/places/AddPlaceActivity;

    const v2, 0x7f0b03fd

    invoke-virtual {v0, v2}, Lcom/facebook/katana/activity/places/AddPlaceActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 142
    :goto_3
    invoke-virtual {v4, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 171
    :goto_4
    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 172
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move v0, v1

    .line 174
    goto :goto_2

    .line 135
    :cond_4
    const-string v2, "blacklist"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 136
    iget-object v0, p0, Lcom/facebook/katana/activity/places/AddPlaceActivity$1;->a:Lcom/facebook/katana/activity/places/AddPlaceActivity;

    const v2, 0x7f0b03ff

    invoke-virtual {v0, v2}, Lcom/facebook/katana/activity/places/AddPlaceActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 137
    :cond_5
    const-string v2, "caps"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 138
    iget-object v0, p0, Lcom/facebook/katana/activity/places/AddPlaceActivity$1;->a:Lcom/facebook/katana/activity/places/AddPlaceActivity;

    const v2, 0x7f0b0401

    invoke-virtual {v0, v2}, Lcom/facebook/katana/activity/places/AddPlaceActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 140
    :cond_6
    iget-object v0, p0, Lcom/facebook/katana/activity/places/AddPlaceActivity$1;->a:Lcom/facebook/katana/activity/places/AddPlaceActivity;

    const v2, 0x7f0b03fb

    invoke-virtual {v0, v2}, Lcom/facebook/katana/activity/places/AddPlaceActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 144
    :cond_7
    const-string v5, "invalid_chars"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 145
    iget-object v0, p0, Lcom/facebook/katana/activity/places/AddPlaceActivity$1;->a:Lcom/facebook/katana/activity/places/AddPlaceActivity;

    const v5, 0x7f0b03fe

    new-array v6, v1, [Ljava/lang/Object;

    aput-object v3, v6, v2

    invoke-virtual {v0, v5, v6}, Lcom/facebook/katana/activity/places/AddPlaceActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 161
    :goto_5
    new-instance v2, Lcom/facebook/katana/activity/places/AddPlaceActivity$1$3;

    invoke-direct {v2, p0, v3}, Lcom/facebook/katana/activity/places/AddPlaceActivity$1$3;-><init>(Lcom/facebook/katana/activity/places/AddPlaceActivity$1;Ljava/lang/String;)V

    invoke-virtual {v4, v7, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 169
    const v2, 0x7f0b01b0

    invoke-virtual {v4, v2, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_4

    .line 148
    :cond_8
    const-string v5, "blacklist"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 149
    iget-object v0, p0, Lcom/facebook/katana/activity/places/AddPlaceActivity$1;->a:Lcom/facebook/katana/activity/places/AddPlaceActivity;

    const v5, 0x7f0b0400

    new-array v6, v1, [Ljava/lang/Object;

    aput-object v3, v6, v2

    invoke-virtual {v0, v5, v6}, Lcom/facebook/katana/activity/places/AddPlaceActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 152
    :cond_9
    const-string v5, "caps"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 153
    iget-object v0, p0, Lcom/facebook/katana/activity/places/AddPlaceActivity$1;->a:Lcom/facebook/katana/activity/places/AddPlaceActivity;

    const v5, 0x7f0b0402

    new-array v6, v1, [Ljava/lang/Object;

    aput-object v3, v6, v2

    invoke-virtual {v0, v5, v6}, Lcom/facebook/katana/activity/places/AddPlaceActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 157
    :cond_a
    iget-object v0, p0, Lcom/facebook/katana/activity/places/AddPlaceActivity$1;->a:Lcom/facebook/katana/activity/places/AddPlaceActivity;

    const v5, 0x7f0b03fc

    new-array v6, v1, [Ljava/lang/Object;

    aput-object v3, v6, v2

    invoke-virtual {v0, v5, v6}, Lcom/facebook/katana/activity/places/AddPlaceActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 174
    :cond_b
    invoke-virtual {v0}, Lcom/facebook/katana/service/method/PlacesCreateException;->a()I

    move-result v0

    const/16 v3, 0x968

    if-ne v0, v3, :cond_c

    .line 176
    iget-object v0, p0, Lcom/facebook/katana/activity/places/AddPlaceActivity$1;->a:Lcom/facebook/katana/activity/places/AddPlaceActivity;

    const v2, 0x7f0b03f6

    invoke-static {v0, v2}, Lcom/facebook/katana/util/Toaster;->a(Landroid/content/Context;I)V

    move v0, v1

    .line 178
    goto/16 :goto_2

    :cond_c
    move v0, v2

    goto/16 :goto_2
.end method

.method public final a(Ljava/lang/String;ILandroid/graphics/Bitmap;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 192
    const/16 v0, 0xc8

    if-ne p2, v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/facebook/katana/activity/places/AddPlaceActivity$1;->a:Lcom/facebook/katana/activity/places/AddPlaceActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1, p3}, Lcom/facebook/katana/activity/places/AddPlaceActivity;->a(Lcom/facebook/katana/activity/places/AddPlaceActivity;Landroid/location/Location;Landroid/graphics/Bitmap;)V

    .line 195
    :cond_0
    return-void
.end method
