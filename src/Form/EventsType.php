<?php

namespace App\Form;

use App\Entity\Events;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;

class EventsType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder
            ->add('name', null, [
                'attr' => ['class' => 'form-control mb-2', 'placeholder' => 'Event`s name'],
                ])
            ->add('createDate', null, [
                'attr' => ['class' => 'form-control mb-2'], 'widget' => 'single_text',
                ])
            ->add('description', null, [
                'attr' => ['class' => 'form-control mb-2', 'placeholder' => 'Details about the event'],
                ])
            ->add('image', null, [
                'attr' => ['class' => 'form-control mb-2', 'placeholder' => 'Put an url for the image'],
                ])
            ->add('capacity', null, [
                'attr' => ['class' => 'form-control mb-2', 'placeholder' => 'Number of guests'],
                ])
            ->add('contact', null, [
                'attr' => ['class' => 'form-control mb-2', 'placeholder' => 'E-mail address'], 
                ])
            ->add('contact_phone', null, [
                'attr' => ['class' => 'form-control mb-2', 'placeholder' => 'Phone number'], 
                ])
            ->add('type', ChoiceType::class, [
                'attr' => ['class' => 'form-control mb-2'],
                'choices'  => [
                    'music' => 'music',
                    'sport' => 'sport',
                    'movie' => 'movie',
                    'theater' => 'theater',
                    'other' => 'other'
                ],
                ])
            ->add('url', null, [
                'attr' => ['class' => 'form-control mb-2', 'placeholder' => 'Url of the event'],
                ])
            ->add('address', null, [
                'attr' => ['class' => 'form-control mb-2', 'placeholder' => 'City, ZIP code, Street and number'], 
                ])
        ;
    }

    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
            'data_class' => Events::class,
        ]);
    }
}
